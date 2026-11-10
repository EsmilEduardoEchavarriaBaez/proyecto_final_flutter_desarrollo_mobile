# ADR 0002 — Sincronización del catálogo: descarga completa paginada, reanudable y con vigencia

- **Estado:** aceptada
- **Fecha:** 2026-11-09

## Contexto

Según el [ADR 0001](0001-base-local-como-unica-fuente-de-lectura.md), la
interfaz solo lee de la base local. Falta decidir **cuándo** y **cómo** se
llena esa base desde PokeAPI.

Datos del problema:

- El catálogo es pequeño (algo más de mil Pokémon) y casi nunca cambia.
- La API es pública y gratuita: conviene no pedirle lo mismo una y otra vez.
- La conexión puede perderse en mitad de la descarga.

## Decisión

**Cómo se descarga**

- Se descarga el **catálogo completo**, página a página (`limit` / `offset`,
  50 Pokémon por página, ordenados por `id`).
- Cada página se guarda en la base local en cuanto llega, con *upsert*. La
  lista de la pantalla crece mientras tanto, porque observa la base.
- Antes de pedir cada página se guarda el avance en `sync_metadata_table`
  (`status = syncing`, `nextOffset`).

**Cuándo se descarga**

- Al abrir la app, **solo si hace falta**: si nunca se completó una
  sincronización o si la última tiene más de 24 horas.
- Cuando el usuario lo pide: botón «Reintentar» o deslizar la lista hacia
  abajo. En ese caso se descarga aunque los datos sigan vigentes.

**Qué pasa si falla**

- El error técnico se traduce a un `Failure` (sin conexión, tiempo agotado,
  límite de peticiones, error del servidor).
- Se guarda `status = failed` y el `nextOffset` donde se quedó. Lo ya
  descargado **no se borra**.
- El siguiente intento **reanuda** desde `nextOffset` en lugar de empezar de
  cero.
- En este avance el reintento es manual. Los reintentos automáticos con
  *backoff* quedan para la entrega final.

**Una sola sincronización a la vez**

`SyncCoordinator` evita que corran dos descargas simultáneas: una segunda
petición espera el resultado de la que ya está en curso.

## Alternativas consideradas

| Alternativa | Por qué se descartó |
|---|---|
| Paginación bajo demanda (descargar cada página al hacer scroll) | Sin conexión solo estaría disponible lo que el usuario llegó a ver; el requisito pide el catálogo disponible offline. |
| Sincronizar siempre al abrir la app | Más de veinte peticiones en cada arranque para datos que casi nunca cambian. |
| Una sola petición con todo el catálogo | Respuesta muy grande, sin progreso visible y, si falla, se pierde todo el trabajo. El avance pide paginación. |
| Empezar de cero después de un fallo | Funciona (el *upsert* evita duplicados) pero repite peticiones ya hechas. |

## Consecuencias

**Positivas**

- Después de la primera sincronización completa, todo el catálogo está
  disponible sin conexión.
- Abrir la app sin conexión con datos vigentes no produce ningún error: ni
  siquiera se intenta usar la red.
- Una descarga interrumpida continúa donde se quedó.

**Negativas / a tener en cuenta**

- La primera descarga hace más de veinte peticiones seguidas.
- Un cambio en PokeAPI puede tardar hasta 24 horas en verse, salvo que el
  usuario fuerce la actualización.
- Las imágenes no forman parte de esta sincronización: se guardan en caché la
  primera vez que cada una se muestra (`cached_network_image`).
