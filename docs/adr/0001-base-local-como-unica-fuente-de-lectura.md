# ADR 0001 — La base local (Drift) es la única fuente de lectura de la interfaz

- **Estado:** aceptada
- **Fecha:** 2026-11-09

## Contexto

La Pokédex debe ser *offline-first*: el catálogo tiene que poder consultarse
sin conexión, incluso después de cerrar y volver a abrir la aplicación, y la
interfaz no puede quedarse bloqueada esperando a la red.

Los datos vienen de la API GraphQL de PokeAPI. Había que decidir de dónde lee
la interfaz y dónde se guardan los datos descargados.

## Decisión

1. **La interfaz solo lee de la base local.** Ningún widget ni provider de la
   capa `presentation` recibe respuestas de GraphQL. La pantalla observa un
   `Stream` de la base de datos (`PokemonRepository.watchPokemon()`).
2. **La red solo escribe en la base local.** La sincronización descarga de
   PokeAPI y guarda en la base; la interfaz se actualiza porque la base cambió,
   no porque haya llegado una respuesta.
3. **La base local es SQLite a través de Drift**, con tres tablas: catálogo
   (`pokemon_table`), favoritos (`favorite_table`) y metadatos de
   sincronización (`sync_metadata_table`).

```
PokeAPI ──(sincronización)──▶ Base local (Drift) ──(Stream)──▶ Interfaz
```

## Alternativas consideradas

| Alternativa | Por qué se descartó |
|---|---|
| Mostrar la respuesta de GraphQL y guardarla «además» en la base | Habría dos caminos de datos (red y base) que pueden mostrar cosas distintas, y la pantalla dependería de la red. |
| Usar la caché normalizada del paquete `graphql` como almacenamiento | No es una base estructurada: no permite modelar favoritos ni metadatos de sincronización, ni hacer consultas (búsqueda y filtros de la entrega final). |
| `sqflite` (SQL escrito a mano) | Sin comprobación de tipos ni consultas reactivas; habría que escribir a mano el mapeo de filas y la notificación de cambios. |
| Hive / almacenamiento clave-valor | No es relacional: complica los filtros y la relación entre catálogo y favoritos. |

Drift se eligió porque genera código con tipos a partir de las tablas, sus
consultas pueden observarse como `Stream` (justo lo que necesita el punto 1) y
ejecuta SQLite en un isolate aparte, sin bloquear la interfaz.

## Consecuencias

**Positivas**

- El catálogo está disponible sin conexión y tras reiniciar, porque lo que se
  muestra siempre sale del archivo SQLite del dispositivo.
- La pantalla tiene un solo camino de datos, fácil de seguir y de probar.
- La app abre de inmediato: muestra lo guardado mientras sincroniza en segundo
  plano.
- El primer guardado y los siguientes usan *upsert* sobre la llave primaria,
  así que volver a sincronizar no duplica filas.

**Negativas / a tener en cuenta**

- Cada dato pasa por tres modelos (`PokemonDto` → fila de Drift → `Pokemon`),
  lo que obliga a mantener un *mapper*.
- Al cambiar una tabla hay que regenerar el código (`dart run build_runner
  build`) y, una vez publicada la app, subir `schemaVersion` y escribir la
  migración.
- La regla «`presentation` no importa GraphQL, Drift ni la capa `data`» se
  vigila con una prueba automática (`test/architecture_test.dart`).
