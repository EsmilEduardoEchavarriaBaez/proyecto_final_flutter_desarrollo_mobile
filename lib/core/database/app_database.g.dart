// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $PokemonTableTable extends PokemonTable
    with TableInfo<$PokemonTableTable, PokemonRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _dexNumberMeta = const VerificationMeta(
    'dexNumber',
  );
  @override
  late final GeneratedColumn<int> dexNumber = GeneratedColumn<int>(
    'dex_number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _generationMeta = const VerificationMeta(
    'generation',
  );
  @override
  late final GeneratedColumn<int> generation = GeneratedColumn<int>(
    'generation',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _baseTotalMeta = const VerificationMeta(
    'baseTotal',
  );
  @override
  late final GeneratedColumn<int> baseTotal = GeneratedColumn<int>(
    'base_total',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _heightDmMeta = const VerificationMeta(
    'heightDm',
  );
  @override
  late final GeneratedColumn<int> heightDm = GeneratedColumn<int>(
    'height_dm',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _weightHgMeta = const VerificationMeta(
    'weightHg',
  );
  @override
  late final GeneratedColumn<int> weightHg = GeneratedColumn<int>(
    'weight_hg',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _typesMeta = const VerificationMeta('types');
  @override
  late final GeneratedColumn<String> types = GeneratedColumn<String>(
    'types',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageUrlMeta = const VerificationMeta(
    'imageUrl',
  );
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
    'image_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    dexNumber,
    name,
    generation,
    baseTotal,
    heightDm,
    weightHg,
    types,
    imageUrl,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<PokemonRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('dex_number')) {
      context.handle(
        _dexNumberMeta,
        dexNumber.isAcceptableOrUnknown(data['dex_number']!, _dexNumberMeta),
      );
    } else if (isInserting) {
      context.missing(_dexNumberMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('generation')) {
      context.handle(
        _generationMeta,
        generation.isAcceptableOrUnknown(data['generation']!, _generationMeta),
      );
    }
    if (data.containsKey('base_total')) {
      context.handle(
        _baseTotalMeta,
        baseTotal.isAcceptableOrUnknown(data['base_total']!, _baseTotalMeta),
      );
    }
    if (data.containsKey('height_dm')) {
      context.handle(
        _heightDmMeta,
        heightDm.isAcceptableOrUnknown(data['height_dm']!, _heightDmMeta),
      );
    }
    if (data.containsKey('weight_hg')) {
      context.handle(
        _weightHgMeta,
        weightHg.isAcceptableOrUnknown(data['weight_hg']!, _weightHgMeta),
      );
    }
    if (data.containsKey('types')) {
      context.handle(
        _typesMeta,
        types.isAcceptableOrUnknown(data['types']!, _typesMeta),
      );
    } else if (isInserting) {
      context.missing(_typesMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(
        _imageUrlMeta,
        imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PokemonRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      dexNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}dex_number'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      generation: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}generation'],
      )!,
      baseTotal: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}base_total'],
      )!,
      heightDm: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}height_dm'],
      )!,
      weightHg: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}weight_hg'],
      )!,
      types: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}types'],
      )!,
      imageUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_url'],
      ),
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $PokemonTableTable createAlias(String alias) {
    return $PokemonTableTable(attachedDatabase, alias);
  }
}

class PokemonRow extends DataClass implements Insertable<PokemonRow> {
  final int id;
  final int dexNumber;
  final String name;
  final int generation;
  final int baseTotal;
  final int heightDm;
  final int weightHg;
  final String types;
  final String? imageUrl;
  final DateTime updatedAt;
  const PokemonRow({
    required this.id,
    required this.dexNumber,
    required this.name,
    required this.generation,
    required this.baseTotal,
    required this.heightDm,
    required this.weightHg,
    required this.types,
    this.imageUrl,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['dex_number'] = Variable<int>(dexNumber);
    map['name'] = Variable<String>(name);
    map['generation'] = Variable<int>(generation);
    map['base_total'] = Variable<int>(baseTotal);
    map['height_dm'] = Variable<int>(heightDm);
    map['weight_hg'] = Variable<int>(weightHg);
    map['types'] = Variable<String>(types);
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  PokemonTableCompanion toCompanion(bool nullToAbsent) {
    return PokemonTableCompanion(
      id: Value(id),
      dexNumber: Value(dexNumber),
      name: Value(name),
      generation: Value(generation),
      baseTotal: Value(baseTotal),
      heightDm: Value(heightDm),
      weightHg: Value(weightHg),
      types: Value(types),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      updatedAt: Value(updatedAt),
    );
  }

  factory PokemonRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonRow(
      id: serializer.fromJson<int>(json['id']),
      dexNumber: serializer.fromJson<int>(json['dexNumber']),
      name: serializer.fromJson<String>(json['name']),
      generation: serializer.fromJson<int>(json['generation']),
      baseTotal: serializer.fromJson<int>(json['baseTotal']),
      heightDm: serializer.fromJson<int>(json['heightDm']),
      weightHg: serializer.fromJson<int>(json['weightHg']),
      types: serializer.fromJson<String>(json['types']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'dexNumber': serializer.toJson<int>(dexNumber),
      'name': serializer.toJson<String>(name),
      'generation': serializer.toJson<int>(generation),
      'baseTotal': serializer.toJson<int>(baseTotal),
      'heightDm': serializer.toJson<int>(heightDm),
      'weightHg': serializer.toJson<int>(weightHg),
      'types': serializer.toJson<String>(types),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  PokemonRow copyWith({
    int? id,
    int? dexNumber,
    String? name,
    int? generation,
    int? baseTotal,
    int? heightDm,
    int? weightHg,
    String? types,
    Value<String?> imageUrl = const Value.absent(),
    DateTime? updatedAt,
  }) => PokemonRow(
    id: id ?? this.id,
    dexNumber: dexNumber ?? this.dexNumber,
    name: name ?? this.name,
    generation: generation ?? this.generation,
    baseTotal: baseTotal ?? this.baseTotal,
    heightDm: heightDm ?? this.heightDm,
    weightHg: weightHg ?? this.weightHg,
    types: types ?? this.types,
    imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  PokemonRow copyWithCompanion(PokemonTableCompanion data) {
    return PokemonRow(
      id: data.id.present ? data.id.value : this.id,
      dexNumber: data.dexNumber.present ? data.dexNumber.value : this.dexNumber,
      name: data.name.present ? data.name.value : this.name,
      generation: data.generation.present
          ? data.generation.value
          : this.generation,
      baseTotal: data.baseTotal.present ? data.baseTotal.value : this.baseTotal,
      heightDm: data.heightDm.present ? data.heightDm.value : this.heightDm,
      weightHg: data.weightHg.present ? data.weightHg.value : this.weightHg,
      types: data.types.present ? data.types.value : this.types,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PokemonRow(')
          ..write('id: $id, ')
          ..write('dexNumber: $dexNumber, ')
          ..write('name: $name, ')
          ..write('generation: $generation, ')
          ..write('baseTotal: $baseTotal, ')
          ..write('heightDm: $heightDm, ')
          ..write('weightHg: $weightHg, ')
          ..write('types: $types, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    dexNumber,
    name,
    generation,
    baseTotal,
    heightDm,
    weightHg,
    types,
    imageUrl,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonRow &&
          other.id == this.id &&
          other.dexNumber == this.dexNumber &&
          other.name == this.name &&
          other.generation == this.generation &&
          other.baseTotal == this.baseTotal &&
          other.heightDm == this.heightDm &&
          other.weightHg == this.weightHg &&
          other.types == this.types &&
          other.imageUrl == this.imageUrl &&
          other.updatedAt == this.updatedAt);
}

class PokemonTableCompanion extends UpdateCompanion<PokemonRow> {
  final Value<int> id;
  final Value<int> dexNumber;
  final Value<String> name;
  final Value<int> generation;
  final Value<int> baseTotal;
  final Value<int> heightDm;
  final Value<int> weightHg;
  final Value<String> types;
  final Value<String?> imageUrl;
  final Value<DateTime> updatedAt;
  const PokemonTableCompanion({
    this.id = const Value.absent(),
    this.dexNumber = const Value.absent(),
    this.name = const Value.absent(),
    this.generation = const Value.absent(),
    this.baseTotal = const Value.absent(),
    this.heightDm = const Value.absent(),
    this.weightHg = const Value.absent(),
    this.types = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  PokemonTableCompanion.insert({
    this.id = const Value.absent(),
    required int dexNumber,
    required String name,
    this.generation = const Value.absent(),
    this.baseTotal = const Value.absent(),
    this.heightDm = const Value.absent(),
    this.weightHg = const Value.absent(),
    required String types,
    this.imageUrl = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : dexNumber = Value(dexNumber),
       name = Value(name),
       types = Value(types);
  static Insertable<PokemonRow> custom({
    Expression<int>? id,
    Expression<int>? dexNumber,
    Expression<String>? name,
    Expression<int>? generation,
    Expression<int>? baseTotal,
    Expression<int>? heightDm,
    Expression<int>? weightHg,
    Expression<String>? types,
    Expression<String>? imageUrl,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (dexNumber != null) 'dex_number': dexNumber,
      if (name != null) 'name': name,
      if (generation != null) 'generation': generation,
      if (baseTotal != null) 'base_total': baseTotal,
      if (heightDm != null) 'height_dm': heightDm,
      if (weightHg != null) 'weight_hg': weightHg,
      if (types != null) 'types': types,
      if (imageUrl != null) 'image_url': imageUrl,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  PokemonTableCompanion copyWith({
    Value<int>? id,
    Value<int>? dexNumber,
    Value<String>? name,
    Value<int>? generation,
    Value<int>? baseTotal,
    Value<int>? heightDm,
    Value<int>? weightHg,
    Value<String>? types,
    Value<String?>? imageUrl,
    Value<DateTime>? updatedAt,
  }) {
    return PokemonTableCompanion(
      id: id ?? this.id,
      dexNumber: dexNumber ?? this.dexNumber,
      name: name ?? this.name,
      generation: generation ?? this.generation,
      baseTotal: baseTotal ?? this.baseTotal,
      heightDm: heightDm ?? this.heightDm,
      weightHg: weightHg ?? this.weightHg,
      types: types ?? this.types,
      imageUrl: imageUrl ?? this.imageUrl,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (dexNumber.present) {
      map['dex_number'] = Variable<int>(dexNumber.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (generation.present) {
      map['generation'] = Variable<int>(generation.value);
    }
    if (baseTotal.present) {
      map['base_total'] = Variable<int>(baseTotal.value);
    }
    if (heightDm.present) {
      map['height_dm'] = Variable<int>(heightDm.value);
    }
    if (weightHg.present) {
      map['weight_hg'] = Variable<int>(weightHg.value);
    }
    if (types.present) {
      map['types'] = Variable<String>(types.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonTableCompanion(')
          ..write('id: $id, ')
          ..write('dexNumber: $dexNumber, ')
          ..write('name: $name, ')
          ..write('generation: $generation, ')
          ..write('baseTotal: $baseTotal, ')
          ..write('heightDm: $heightDm, ')
          ..write('weightHg: $weightHg, ')
          ..write('types: $types, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $FavoriteTableTable extends FavoriteTable
    with TableInfo<$FavoriteTableTable, FavoriteRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavoriteTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pokemonIdMeta = const VerificationMeta(
    'pokemonId',
  );
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
    'pokemon_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [pokemonId, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'favorite_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<FavoriteRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pokemon_id')) {
      context.handle(
        _pokemonIdMeta,
        pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pokemonId};
  @override
  FavoriteRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FavoriteRow(
      pokemonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pokemon_id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $FavoriteTableTable createAlias(String alias) {
    return $FavoriteTableTable(attachedDatabase, alias);
  }
}

class FavoriteRow extends DataClass implements Insertable<FavoriteRow> {
  /// Id del Pokémon favorito. Es la llave primaria: un Pokémon solo puede
  /// estar una vez en favoritos.
  final int pokemonId;

  /// Momento en que se marcó como favorito.
  final DateTime createdAt;
  const FavoriteRow({required this.pokemonId, required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pokemon_id'] = Variable<int>(pokemonId);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  FavoriteTableCompanion toCompanion(bool nullToAbsent) {
    return FavoriteTableCompanion(
      pokemonId: Value(pokemonId),
      createdAt: Value(createdAt),
    );
  }

  factory FavoriteRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FavoriteRow(
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pokemonId': serializer.toJson<int>(pokemonId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  FavoriteRow copyWith({int? pokemonId, DateTime? createdAt}) => FavoriteRow(
    pokemonId: pokemonId ?? this.pokemonId,
    createdAt: createdAt ?? this.createdAt,
  );
  FavoriteRow copyWithCompanion(FavoriteTableCompanion data) {
    return FavoriteRow(
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FavoriteRow(')
          ..write('pokemonId: $pokemonId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(pokemonId, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FavoriteRow &&
          other.pokemonId == this.pokemonId &&
          other.createdAt == this.createdAt);
}

class FavoriteTableCompanion extends UpdateCompanion<FavoriteRow> {
  final Value<int> pokemonId;
  final Value<DateTime> createdAt;
  const FavoriteTableCompanion({
    this.pokemonId = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  FavoriteTableCompanion.insert({
    this.pokemonId = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  static Insertable<FavoriteRow> custom({
    Expression<int>? pokemonId,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  FavoriteTableCompanion copyWith({
    Value<int>? pokemonId,
    Value<DateTime>? createdAt,
  }) {
    return FavoriteTableCompanion(
      pokemonId: pokemonId ?? this.pokemonId,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoriteTableCompanion(')
          ..write('pokemonId: $pokemonId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $TypeTableTable extends TypeTable
    with TableInfo<$TypeTableTable, TypeRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TypeTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'type_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<TypeRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TypeRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TypeRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
    );
  }

  @override
  $TypeTableTable createAlias(String alias) {
    return $TypeTableTable(attachedDatabase, alias);
  }
}

class TypeRow extends DataClass implements Insertable<TypeRow> {
  final int id;
  final String name;
  const TypeRow({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  TypeTableCompanion toCompanion(bool nullToAbsent) {
    return TypeTableCompanion(id: Value(id), name: Value(name));
  }

  factory TypeRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TypeRow(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  TypeRow copyWith({int? id, String? name}) =>
      TypeRow(id: id ?? this.id, name: name ?? this.name);
  TypeRow copyWithCompanion(TypeTableCompanion data) {
    return TypeRow(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TypeRow(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TypeRow && other.id == this.id && other.name == this.name);
}

class TypeTableCompanion extends UpdateCompanion<TypeRow> {
  final Value<int> id;
  final Value<String> name;
  const TypeTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  TypeTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<TypeRow> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  TypeTableCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return TypeTableCompanion(id: id ?? this.id, name: name ?? this.name);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TypeTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $PokemonTypeTableTable extends PokemonTypeTable
    with TableInfo<$PokemonTypeTableTable, PokemonTypeRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonTypeTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pokemonIdMeta = const VerificationMeta(
    'pokemonId',
  );
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
    'pokemon_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemon_table (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _typeIdMeta = const VerificationMeta('typeId');
  @override
  late final GeneratedColumn<int> typeId = GeneratedColumn<int>(
    'type_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES type_table (id)',
    ),
  );
  static const VerificationMeta _slotMeta = const VerificationMeta('slot');
  @override
  late final GeneratedColumn<int> slot = GeneratedColumn<int>(
    'slot',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [pokemonId, typeId, slot];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_type_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<PokemonTypeRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pokemon_id')) {
      context.handle(
        _pokemonIdMeta,
        pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pokemonIdMeta);
    }
    if (data.containsKey('type_id')) {
      context.handle(
        _typeIdMeta,
        typeId.isAcceptableOrUnknown(data['type_id']!, _typeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_typeIdMeta);
    }
    if (data.containsKey('slot')) {
      context.handle(
        _slotMeta,
        slot.isAcceptableOrUnknown(data['slot']!, _slotMeta),
      );
    } else if (isInserting) {
      context.missing(_slotMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pokemonId, slot};
  @override
  PokemonTypeRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonTypeRow(
      pokemonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pokemon_id'],
      )!,
      typeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}type_id'],
      )!,
      slot: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}slot'],
      )!,
    );
  }

  @override
  $PokemonTypeTableTable createAlias(String alias) {
    return $PokemonTypeTableTable(attachedDatabase, alias);
  }
}

class PokemonTypeRow extends DataClass implements Insertable<PokemonTypeRow> {
  final int pokemonId;
  final int typeId;
  final int slot;
  const PokemonTypeRow({
    required this.pokemonId,
    required this.typeId,
    required this.slot,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pokemon_id'] = Variable<int>(pokemonId);
    map['type_id'] = Variable<int>(typeId);
    map['slot'] = Variable<int>(slot);
    return map;
  }

  PokemonTypeTableCompanion toCompanion(bool nullToAbsent) {
    return PokemonTypeTableCompanion(
      pokemonId: Value(pokemonId),
      typeId: Value(typeId),
      slot: Value(slot),
    );
  }

  factory PokemonTypeRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonTypeRow(
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      typeId: serializer.fromJson<int>(json['typeId']),
      slot: serializer.fromJson<int>(json['slot']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pokemonId': serializer.toJson<int>(pokemonId),
      'typeId': serializer.toJson<int>(typeId),
      'slot': serializer.toJson<int>(slot),
    };
  }

  PokemonTypeRow copyWith({int? pokemonId, int? typeId, int? slot}) =>
      PokemonTypeRow(
        pokemonId: pokemonId ?? this.pokemonId,
        typeId: typeId ?? this.typeId,
        slot: slot ?? this.slot,
      );
  PokemonTypeRow copyWithCompanion(PokemonTypeTableCompanion data) {
    return PokemonTypeRow(
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      typeId: data.typeId.present ? data.typeId.value : this.typeId,
      slot: data.slot.present ? data.slot.value : this.slot,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PokemonTypeRow(')
          ..write('pokemonId: $pokemonId, ')
          ..write('typeId: $typeId, ')
          ..write('slot: $slot')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(pokemonId, typeId, slot);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonTypeRow &&
          other.pokemonId == this.pokemonId &&
          other.typeId == this.typeId &&
          other.slot == this.slot);
}

class PokemonTypeTableCompanion extends UpdateCompanion<PokemonTypeRow> {
  final Value<int> pokemonId;
  final Value<int> typeId;
  final Value<int> slot;
  final Value<int> rowid;
  const PokemonTypeTableCompanion({
    this.pokemonId = const Value.absent(),
    this.typeId = const Value.absent(),
    this.slot = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PokemonTypeTableCompanion.insert({
    required int pokemonId,
    required int typeId,
    required int slot,
    this.rowid = const Value.absent(),
  }) : pokemonId = Value(pokemonId),
       typeId = Value(typeId),
       slot = Value(slot);
  static Insertable<PokemonTypeRow> custom({
    Expression<int>? pokemonId,
    Expression<int>? typeId,
    Expression<int>? slot,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (typeId != null) 'type_id': typeId,
      if (slot != null) 'slot': slot,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PokemonTypeTableCompanion copyWith({
    Value<int>? pokemonId,
    Value<int>? typeId,
    Value<int>? slot,
    Value<int>? rowid,
  }) {
    return PokemonTypeTableCompanion(
      pokemonId: pokemonId ?? this.pokemonId,
      typeId: typeId ?? this.typeId,
      slot: slot ?? this.slot,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (typeId.present) {
      map['type_id'] = Variable<int>(typeId.value);
    }
    if (slot.present) {
      map['slot'] = Variable<int>(slot.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonTypeTableCompanion(')
          ..write('pokemonId: $pokemonId, ')
          ..write('typeId: $typeId, ')
          ..write('slot: $slot, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $StatTableTable extends StatTable
    with TableInfo<$StatTableTable, StatRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StatTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pokemonIdMeta = const VerificationMeta(
    'pokemonId',
  );
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
    'pokemon_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemon_table (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _statNameMeta = const VerificationMeta(
    'statName',
  );
  @override
  late final GeneratedColumn<String> statName = GeneratedColumn<String>(
    'stat_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _baseValueMeta = const VerificationMeta(
    'baseValue',
  );
  @override
  late final GeneratedColumn<int> baseValue = GeneratedColumn<int>(
    'base_value',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [pokemonId, statName, baseValue];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'stat_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<StatRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pokemon_id')) {
      context.handle(
        _pokemonIdMeta,
        pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pokemonIdMeta);
    }
    if (data.containsKey('stat_name')) {
      context.handle(
        _statNameMeta,
        statName.isAcceptableOrUnknown(data['stat_name']!, _statNameMeta),
      );
    } else if (isInserting) {
      context.missing(_statNameMeta);
    }
    if (data.containsKey('base_value')) {
      context.handle(
        _baseValueMeta,
        baseValue.isAcceptableOrUnknown(data['base_value']!, _baseValueMeta),
      );
    } else if (isInserting) {
      context.missing(_baseValueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pokemonId, statName};
  @override
  StatRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StatRow(
      pokemonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pokemon_id'],
      )!,
      statName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}stat_name'],
      )!,
      baseValue: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}base_value'],
      )!,
    );
  }

  @override
  $StatTableTable createAlias(String alias) {
    return $StatTableTable(attachedDatabase, alias);
  }
}

class StatRow extends DataClass implements Insertable<StatRow> {
  final int pokemonId;
  final String statName;
  final int baseValue;
  const StatRow({
    required this.pokemonId,
    required this.statName,
    required this.baseValue,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pokemon_id'] = Variable<int>(pokemonId);
    map['stat_name'] = Variable<String>(statName);
    map['base_value'] = Variable<int>(baseValue);
    return map;
  }

  StatTableCompanion toCompanion(bool nullToAbsent) {
    return StatTableCompanion(
      pokemonId: Value(pokemonId),
      statName: Value(statName),
      baseValue: Value(baseValue),
    );
  }

  factory StatRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StatRow(
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      statName: serializer.fromJson<String>(json['statName']),
      baseValue: serializer.fromJson<int>(json['baseValue']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pokemonId': serializer.toJson<int>(pokemonId),
      'statName': serializer.toJson<String>(statName),
      'baseValue': serializer.toJson<int>(baseValue),
    };
  }

  StatRow copyWith({int? pokemonId, String? statName, int? baseValue}) =>
      StatRow(
        pokemonId: pokemonId ?? this.pokemonId,
        statName: statName ?? this.statName,
        baseValue: baseValue ?? this.baseValue,
      );
  StatRow copyWithCompanion(StatTableCompanion data) {
    return StatRow(
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      statName: data.statName.present ? data.statName.value : this.statName,
      baseValue: data.baseValue.present ? data.baseValue.value : this.baseValue,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StatRow(')
          ..write('pokemonId: $pokemonId, ')
          ..write('statName: $statName, ')
          ..write('baseValue: $baseValue')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(pokemonId, statName, baseValue);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StatRow &&
          other.pokemonId == this.pokemonId &&
          other.statName == this.statName &&
          other.baseValue == this.baseValue);
}

class StatTableCompanion extends UpdateCompanion<StatRow> {
  final Value<int> pokemonId;
  final Value<String> statName;
  final Value<int> baseValue;
  final Value<int> rowid;
  const StatTableCompanion({
    this.pokemonId = const Value.absent(),
    this.statName = const Value.absent(),
    this.baseValue = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  StatTableCompanion.insert({
    required int pokemonId,
    required String statName,
    required int baseValue,
    this.rowid = const Value.absent(),
  }) : pokemonId = Value(pokemonId),
       statName = Value(statName),
       baseValue = Value(baseValue);
  static Insertable<StatRow> custom({
    Expression<int>? pokemonId,
    Expression<String>? statName,
    Expression<int>? baseValue,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (statName != null) 'stat_name': statName,
      if (baseValue != null) 'base_value': baseValue,
      if (rowid != null) 'rowid': rowid,
    });
  }

  StatTableCompanion copyWith({
    Value<int>? pokemonId,
    Value<String>? statName,
    Value<int>? baseValue,
    Value<int>? rowid,
  }) {
    return StatTableCompanion(
      pokemonId: pokemonId ?? this.pokemonId,
      statName: statName ?? this.statName,
      baseValue: baseValue ?? this.baseValue,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (statName.present) {
      map['stat_name'] = Variable<String>(statName.value);
    }
    if (baseValue.present) {
      map['base_value'] = Variable<int>(baseValue.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StatTableCompanion(')
          ..write('pokemonId: $pokemonId, ')
          ..write('statName: $statName, ')
          ..write('baseValue: $baseValue, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AbilityTableTable extends AbilityTable
    with TableInfo<$AbilityTableTable, AbilityRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AbilityTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _effectSummaryMeta = const VerificationMeta(
    'effectSummary',
  );
  @override
  late final GeneratedColumn<String> effectSummary = GeneratedColumn<String>(
    'effect_summary',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, effectSummary];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'ability_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<AbilityRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('effect_summary')) {
      context.handle(
        _effectSummaryMeta,
        effectSummary.isAcceptableOrUnknown(
          data['effect_summary']!,
          _effectSummaryMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AbilityRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AbilityRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      effectSummary: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}effect_summary'],
      ),
    );
  }

  @override
  $AbilityTableTable createAlias(String alias) {
    return $AbilityTableTable(attachedDatabase, alias);
  }
}

class AbilityRow extends DataClass implements Insertable<AbilityRow> {
  final int id;
  final String name;
  final String? effectSummary;
  const AbilityRow({required this.id, required this.name, this.effectSummary});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || effectSummary != null) {
      map['effect_summary'] = Variable<String>(effectSummary);
    }
    return map;
  }

  AbilityTableCompanion toCompanion(bool nullToAbsent) {
    return AbilityTableCompanion(
      id: Value(id),
      name: Value(name),
      effectSummary: effectSummary == null && nullToAbsent
          ? const Value.absent()
          : Value(effectSummary),
    );
  }

  factory AbilityRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AbilityRow(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      effectSummary: serializer.fromJson<String?>(json['effectSummary']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'effectSummary': serializer.toJson<String?>(effectSummary),
    };
  }

  AbilityRow copyWith({
    int? id,
    String? name,
    Value<String?> effectSummary = const Value.absent(),
  }) => AbilityRow(
    id: id ?? this.id,
    name: name ?? this.name,
    effectSummary: effectSummary.present
        ? effectSummary.value
        : this.effectSummary,
  );
  AbilityRow copyWithCompanion(AbilityTableCompanion data) {
    return AbilityRow(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      effectSummary: data.effectSummary.present
          ? data.effectSummary.value
          : this.effectSummary,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AbilityRow(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('effectSummary: $effectSummary')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, effectSummary);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AbilityRow &&
          other.id == this.id &&
          other.name == this.name &&
          other.effectSummary == this.effectSummary);
}

class AbilityTableCompanion extends UpdateCompanion<AbilityRow> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> effectSummary;
  const AbilityTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.effectSummary = const Value.absent(),
  });
  AbilityTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.effectSummary = const Value.absent(),
  }) : name = Value(name);
  static Insertable<AbilityRow> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? effectSummary,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (effectSummary != null) 'effect_summary': effectSummary,
    });
  }

  AbilityTableCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String?>? effectSummary,
  }) {
    return AbilityTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      effectSummary: effectSummary ?? this.effectSummary,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (effectSummary.present) {
      map['effect_summary'] = Variable<String>(effectSummary.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AbilityTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('effectSummary: $effectSummary')
          ..write(')'))
        .toString();
  }
}

class $PokemonAbilityTableTable extends PokemonAbilityTable
    with TableInfo<$PokemonAbilityTableTable, PokemonAbilityRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonAbilityTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pokemonIdMeta = const VerificationMeta(
    'pokemonId',
  );
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
    'pokemon_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemon_table (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _abilityIdMeta = const VerificationMeta(
    'abilityId',
  );
  @override
  late final GeneratedColumn<int> abilityId = GeneratedColumn<int>(
    'ability_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES ability_table (id)',
    ),
  );
  static const VerificationMeta _slotMeta = const VerificationMeta('slot');
  @override
  late final GeneratedColumn<int> slot = GeneratedColumn<int>(
    'slot',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isHiddenMeta = const VerificationMeta(
    'isHidden',
  );
  @override
  late final GeneratedColumn<bool> isHidden = GeneratedColumn<bool>(
    'is_hidden',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_hidden" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [pokemonId, abilityId, slot, isHidden];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_ability_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<PokemonAbilityRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pokemon_id')) {
      context.handle(
        _pokemonIdMeta,
        pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pokemonIdMeta);
    }
    if (data.containsKey('ability_id')) {
      context.handle(
        _abilityIdMeta,
        abilityId.isAcceptableOrUnknown(data['ability_id']!, _abilityIdMeta),
      );
    } else if (isInserting) {
      context.missing(_abilityIdMeta);
    }
    if (data.containsKey('slot')) {
      context.handle(
        _slotMeta,
        slot.isAcceptableOrUnknown(data['slot']!, _slotMeta),
      );
    } else if (isInserting) {
      context.missing(_slotMeta);
    }
    if (data.containsKey('is_hidden')) {
      context.handle(
        _isHiddenMeta,
        isHidden.isAcceptableOrUnknown(data['is_hidden']!, _isHiddenMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pokemonId, abilityId};
  @override
  PokemonAbilityRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonAbilityRow(
      pokemonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pokemon_id'],
      )!,
      abilityId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ability_id'],
      )!,
      slot: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}slot'],
      )!,
      isHidden: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_hidden'],
      )!,
    );
  }

  @override
  $PokemonAbilityTableTable createAlias(String alias) {
    return $PokemonAbilityTableTable(attachedDatabase, alias);
  }
}

class PokemonAbilityRow extends DataClass
    implements Insertable<PokemonAbilityRow> {
  final int pokemonId;
  final int abilityId;
  final int slot;
  final bool isHidden;
  const PokemonAbilityRow({
    required this.pokemonId,
    required this.abilityId,
    required this.slot,
    required this.isHidden,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pokemon_id'] = Variable<int>(pokemonId);
    map['ability_id'] = Variable<int>(abilityId);
    map['slot'] = Variable<int>(slot);
    map['is_hidden'] = Variable<bool>(isHidden);
    return map;
  }

  PokemonAbilityTableCompanion toCompanion(bool nullToAbsent) {
    return PokemonAbilityTableCompanion(
      pokemonId: Value(pokemonId),
      abilityId: Value(abilityId),
      slot: Value(slot),
      isHidden: Value(isHidden),
    );
  }

  factory PokemonAbilityRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonAbilityRow(
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      abilityId: serializer.fromJson<int>(json['abilityId']),
      slot: serializer.fromJson<int>(json['slot']),
      isHidden: serializer.fromJson<bool>(json['isHidden']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pokemonId': serializer.toJson<int>(pokemonId),
      'abilityId': serializer.toJson<int>(abilityId),
      'slot': serializer.toJson<int>(slot),
      'isHidden': serializer.toJson<bool>(isHidden),
    };
  }

  PokemonAbilityRow copyWith({
    int? pokemonId,
    int? abilityId,
    int? slot,
    bool? isHidden,
  }) => PokemonAbilityRow(
    pokemonId: pokemonId ?? this.pokemonId,
    abilityId: abilityId ?? this.abilityId,
    slot: slot ?? this.slot,
    isHidden: isHidden ?? this.isHidden,
  );
  PokemonAbilityRow copyWithCompanion(PokemonAbilityTableCompanion data) {
    return PokemonAbilityRow(
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      abilityId: data.abilityId.present ? data.abilityId.value : this.abilityId,
      slot: data.slot.present ? data.slot.value : this.slot,
      isHidden: data.isHidden.present ? data.isHidden.value : this.isHidden,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PokemonAbilityRow(')
          ..write('pokemonId: $pokemonId, ')
          ..write('abilityId: $abilityId, ')
          ..write('slot: $slot, ')
          ..write('isHidden: $isHidden')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(pokemonId, abilityId, slot, isHidden);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonAbilityRow &&
          other.pokemonId == this.pokemonId &&
          other.abilityId == this.abilityId &&
          other.slot == this.slot &&
          other.isHidden == this.isHidden);
}

class PokemonAbilityTableCompanion extends UpdateCompanion<PokemonAbilityRow> {
  final Value<int> pokemonId;
  final Value<int> abilityId;
  final Value<int> slot;
  final Value<bool> isHidden;
  final Value<int> rowid;
  const PokemonAbilityTableCompanion({
    this.pokemonId = const Value.absent(),
    this.abilityId = const Value.absent(),
    this.slot = const Value.absent(),
    this.isHidden = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PokemonAbilityTableCompanion.insert({
    required int pokemonId,
    required int abilityId,
    required int slot,
    this.isHidden = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : pokemonId = Value(pokemonId),
       abilityId = Value(abilityId),
       slot = Value(slot);
  static Insertable<PokemonAbilityRow> custom({
    Expression<int>? pokemonId,
    Expression<int>? abilityId,
    Expression<int>? slot,
    Expression<bool>? isHidden,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (abilityId != null) 'ability_id': abilityId,
      if (slot != null) 'slot': slot,
      if (isHidden != null) 'is_hidden': isHidden,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PokemonAbilityTableCompanion copyWith({
    Value<int>? pokemonId,
    Value<int>? abilityId,
    Value<int>? slot,
    Value<bool>? isHidden,
    Value<int>? rowid,
  }) {
    return PokemonAbilityTableCompanion(
      pokemonId: pokemonId ?? this.pokemonId,
      abilityId: abilityId ?? this.abilityId,
      slot: slot ?? this.slot,
      isHidden: isHidden ?? this.isHidden,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (abilityId.present) {
      map['ability_id'] = Variable<int>(abilityId.value);
    }
    if (slot.present) {
      map['slot'] = Variable<int>(slot.value);
    }
    if (isHidden.present) {
      map['is_hidden'] = Variable<bool>(isHidden.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonAbilityTableCompanion(')
          ..write('pokemonId: $pokemonId, ')
          ..write('abilityId: $abilityId, ')
          ..write('slot: $slot, ')
          ..write('isHidden: $isHidden, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MoveTableTable extends MoveTable
    with TableInfo<$MoveTableTable, MoveRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MoveTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'move_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<MoveRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoveRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MoveRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
    );
  }

  @override
  $MoveTableTable createAlias(String alias) {
    return $MoveTableTable(attachedDatabase, alias);
  }
}

class MoveRow extends DataClass implements Insertable<MoveRow> {
  final int id;
  final String name;
  const MoveRow({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  MoveTableCompanion toCompanion(bool nullToAbsent) {
    return MoveTableCompanion(id: Value(id), name: Value(name));
  }

  factory MoveRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MoveRow(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  MoveRow copyWith({int? id, String? name}) =>
      MoveRow(id: id ?? this.id, name: name ?? this.name);
  MoveRow copyWithCompanion(MoveTableCompanion data) {
    return MoveRow(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MoveRow(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MoveRow && other.id == this.id && other.name == this.name);
}

class MoveTableCompanion extends UpdateCompanion<MoveRow> {
  final Value<int> id;
  final Value<String> name;
  const MoveTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  MoveTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<MoveRow> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  MoveTableCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return MoveTableCompanion(id: id ?? this.id, name: name ?? this.name);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoveTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $PokemonMoveTableTable extends PokemonMoveTable
    with TableInfo<$PokemonMoveTableTable, PokemonMoveRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonMoveTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pokemonIdMeta = const VerificationMeta(
    'pokemonId',
  );
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
    'pokemon_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemon_table (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _moveIdMeta = const VerificationMeta('moveId');
  @override
  late final GeneratedColumn<int> moveId = GeneratedColumn<int>(
    'move_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES move_table (id)',
    ),
  );
  static const VerificationMeta _versionGroupMeta = const VerificationMeta(
    'versionGroup',
  );
  @override
  late final GeneratedColumn<String> versionGroup = GeneratedColumn<String>(
    'version_group',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _learnMethodMeta = const VerificationMeta(
    'learnMethod',
  );
  @override
  late final GeneratedColumn<String> learnMethod = GeneratedColumn<String>(
    'learn_method',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _levelLearnedMeta = const VerificationMeta(
    'levelLearned',
  );
  @override
  late final GeneratedColumn<int> levelLearned = GeneratedColumn<int>(
    'level_learned',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    pokemonId,
    moveId,
    versionGroup,
    learnMethod,
    levelLearned,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_move_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<PokemonMoveRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pokemon_id')) {
      context.handle(
        _pokemonIdMeta,
        pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pokemonIdMeta);
    }
    if (data.containsKey('move_id')) {
      context.handle(
        _moveIdMeta,
        moveId.isAcceptableOrUnknown(data['move_id']!, _moveIdMeta),
      );
    } else if (isInserting) {
      context.missing(_moveIdMeta);
    }
    if (data.containsKey('version_group')) {
      context.handle(
        _versionGroupMeta,
        versionGroup.isAcceptableOrUnknown(
          data['version_group']!,
          _versionGroupMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_versionGroupMeta);
    }
    if (data.containsKey('learn_method')) {
      context.handle(
        _learnMethodMeta,
        learnMethod.isAcceptableOrUnknown(
          data['learn_method']!,
          _learnMethodMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_learnMethodMeta);
    }
    if (data.containsKey('level_learned')) {
      context.handle(
        _levelLearnedMeta,
        levelLearned.isAcceptableOrUnknown(
          data['level_learned']!,
          _levelLearnedMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {
    pokemonId,
    moveId,
    versionGroup,
    learnMethod,
  };
  @override
  PokemonMoveRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonMoveRow(
      pokemonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pokemon_id'],
      )!,
      moveId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}move_id'],
      )!,
      versionGroup: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}version_group'],
      )!,
      learnMethod: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}learn_method'],
      )!,
      levelLearned: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}level_learned'],
      ),
    );
  }

  @override
  $PokemonMoveTableTable createAlias(String alias) {
    return $PokemonMoveTableTable(attachedDatabase, alias);
  }
}

class PokemonMoveRow extends DataClass implements Insertable<PokemonMoveRow> {
  final int pokemonId;
  final int moveId;
  final String versionGroup;
  final String learnMethod;
  final int? levelLearned;
  const PokemonMoveRow({
    required this.pokemonId,
    required this.moveId,
    required this.versionGroup,
    required this.learnMethod,
    this.levelLearned,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pokemon_id'] = Variable<int>(pokemonId);
    map['move_id'] = Variable<int>(moveId);
    map['version_group'] = Variable<String>(versionGroup);
    map['learn_method'] = Variable<String>(learnMethod);
    if (!nullToAbsent || levelLearned != null) {
      map['level_learned'] = Variable<int>(levelLearned);
    }
    return map;
  }

  PokemonMoveTableCompanion toCompanion(bool nullToAbsent) {
    return PokemonMoveTableCompanion(
      pokemonId: Value(pokemonId),
      moveId: Value(moveId),
      versionGroup: Value(versionGroup),
      learnMethod: Value(learnMethod),
      levelLearned: levelLearned == null && nullToAbsent
          ? const Value.absent()
          : Value(levelLearned),
    );
  }

  factory PokemonMoveRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonMoveRow(
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      moveId: serializer.fromJson<int>(json['moveId']),
      versionGroup: serializer.fromJson<String>(json['versionGroup']),
      learnMethod: serializer.fromJson<String>(json['learnMethod']),
      levelLearned: serializer.fromJson<int?>(json['levelLearned']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pokemonId': serializer.toJson<int>(pokemonId),
      'moveId': serializer.toJson<int>(moveId),
      'versionGroup': serializer.toJson<String>(versionGroup),
      'learnMethod': serializer.toJson<String>(learnMethod),
      'levelLearned': serializer.toJson<int?>(levelLearned),
    };
  }

  PokemonMoveRow copyWith({
    int? pokemonId,
    int? moveId,
    String? versionGroup,
    String? learnMethod,
    Value<int?> levelLearned = const Value.absent(),
  }) => PokemonMoveRow(
    pokemonId: pokemonId ?? this.pokemonId,
    moveId: moveId ?? this.moveId,
    versionGroup: versionGroup ?? this.versionGroup,
    learnMethod: learnMethod ?? this.learnMethod,
    levelLearned: levelLearned.present ? levelLearned.value : this.levelLearned,
  );
  PokemonMoveRow copyWithCompanion(PokemonMoveTableCompanion data) {
    return PokemonMoveRow(
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      moveId: data.moveId.present ? data.moveId.value : this.moveId,
      versionGroup: data.versionGroup.present
          ? data.versionGroup.value
          : this.versionGroup,
      learnMethod: data.learnMethod.present
          ? data.learnMethod.value
          : this.learnMethod,
      levelLearned: data.levelLearned.present
          ? data.levelLearned.value
          : this.levelLearned,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PokemonMoveRow(')
          ..write('pokemonId: $pokemonId, ')
          ..write('moveId: $moveId, ')
          ..write('versionGroup: $versionGroup, ')
          ..write('learnMethod: $learnMethod, ')
          ..write('levelLearned: $levelLearned')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(pokemonId, moveId, versionGroup, learnMethod, levelLearned);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonMoveRow &&
          other.pokemonId == this.pokemonId &&
          other.moveId == this.moveId &&
          other.versionGroup == this.versionGroup &&
          other.learnMethod == this.learnMethod &&
          other.levelLearned == this.levelLearned);
}

class PokemonMoveTableCompanion extends UpdateCompanion<PokemonMoveRow> {
  final Value<int> pokemonId;
  final Value<int> moveId;
  final Value<String> versionGroup;
  final Value<String> learnMethod;
  final Value<int?> levelLearned;
  final Value<int> rowid;
  const PokemonMoveTableCompanion({
    this.pokemonId = const Value.absent(),
    this.moveId = const Value.absent(),
    this.versionGroup = const Value.absent(),
    this.learnMethod = const Value.absent(),
    this.levelLearned = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PokemonMoveTableCompanion.insert({
    required int pokemonId,
    required int moveId,
    required String versionGroup,
    required String learnMethod,
    this.levelLearned = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : pokemonId = Value(pokemonId),
       moveId = Value(moveId),
       versionGroup = Value(versionGroup),
       learnMethod = Value(learnMethod);
  static Insertable<PokemonMoveRow> custom({
    Expression<int>? pokemonId,
    Expression<int>? moveId,
    Expression<String>? versionGroup,
    Expression<String>? learnMethod,
    Expression<int>? levelLearned,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (moveId != null) 'move_id': moveId,
      if (versionGroup != null) 'version_group': versionGroup,
      if (learnMethod != null) 'learn_method': learnMethod,
      if (levelLearned != null) 'level_learned': levelLearned,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PokemonMoveTableCompanion copyWith({
    Value<int>? pokemonId,
    Value<int>? moveId,
    Value<String>? versionGroup,
    Value<String>? learnMethod,
    Value<int?>? levelLearned,
    Value<int>? rowid,
  }) {
    return PokemonMoveTableCompanion(
      pokemonId: pokemonId ?? this.pokemonId,
      moveId: moveId ?? this.moveId,
      versionGroup: versionGroup ?? this.versionGroup,
      learnMethod: learnMethod ?? this.learnMethod,
      levelLearned: levelLearned ?? this.levelLearned,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (moveId.present) {
      map['move_id'] = Variable<int>(moveId.value);
    }
    if (versionGroup.present) {
      map['version_group'] = Variable<String>(versionGroup.value);
    }
    if (learnMethod.present) {
      map['learn_method'] = Variable<String>(learnMethod.value);
    }
    if (levelLearned.present) {
      map['level_learned'] = Variable<int>(levelLearned.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonMoveTableCompanion(')
          ..write('pokemonId: $pokemonId, ')
          ..write('moveId: $moveId, ')
          ..write('versionGroup: $versionGroup, ')
          ..write('learnMethod: $learnMethod, ')
          ..write('levelLearned: $levelLearned, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EvolutionTableTable extends EvolutionTable
    with TableInfo<$EvolutionTableTable, EvolutionRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EvolutionTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _fromPokemonIdMeta = const VerificationMeta(
    'fromPokemonId',
  );
  @override
  late final GeneratedColumn<int> fromPokemonId = GeneratedColumn<int>(
    'from_pokemon_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemon_table (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _toPokemonIdMeta = const VerificationMeta(
    'toPokemonId',
  );
  @override
  late final GeneratedColumn<int> toPokemonId = GeneratedColumn<int>(
    'to_pokemon_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemon_table (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _triggerMeta = const VerificationMeta(
    'trigger',
  );
  @override
  late final GeneratedColumn<String> trigger = GeneratedColumn<String>(
    'trigger',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minLevelMeta = const VerificationMeta(
    'minLevel',
  );
  @override
  late final GeneratedColumn<int> minLevel = GeneratedColumn<int>(
    'min_level',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    fromPokemonId,
    toPokemonId,
    trigger,
    minLevel,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'evolution_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<EvolutionRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('from_pokemon_id')) {
      context.handle(
        _fromPokemonIdMeta,
        fromPokemonId.isAcceptableOrUnknown(
          data['from_pokemon_id']!,
          _fromPokemonIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_fromPokemonIdMeta);
    }
    if (data.containsKey('to_pokemon_id')) {
      context.handle(
        _toPokemonIdMeta,
        toPokemonId.isAcceptableOrUnknown(
          data['to_pokemon_id']!,
          _toPokemonIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_toPokemonIdMeta);
    }
    if (data.containsKey('trigger')) {
      context.handle(
        _triggerMeta,
        trigger.isAcceptableOrUnknown(data['trigger']!, _triggerMeta),
      );
    } else if (isInserting) {
      context.missing(_triggerMeta);
    }
    if (data.containsKey('min_level')) {
      context.handle(
        _minLevelMeta,
        minLevel.isAcceptableOrUnknown(data['min_level']!, _minLevelMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {fromPokemonId, toPokemonId};
  @override
  EvolutionRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EvolutionRow(
      fromPokemonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}from_pokemon_id'],
      )!,
      toPokemonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}to_pokemon_id'],
      )!,
      trigger: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}trigger'],
      )!,
      minLevel: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}min_level'],
      ),
    );
  }

  @override
  $EvolutionTableTable createAlias(String alias) {
    return $EvolutionTableTable(attachedDatabase, alias);
  }
}

class EvolutionRow extends DataClass implements Insertable<EvolutionRow> {
  final int fromPokemonId;
  final int toPokemonId;
  final String trigger;
  final int? minLevel;
  const EvolutionRow({
    required this.fromPokemonId,
    required this.toPokemonId,
    required this.trigger,
    this.minLevel,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['from_pokemon_id'] = Variable<int>(fromPokemonId);
    map['to_pokemon_id'] = Variable<int>(toPokemonId);
    map['trigger'] = Variable<String>(trigger);
    if (!nullToAbsent || minLevel != null) {
      map['min_level'] = Variable<int>(minLevel);
    }
    return map;
  }

  EvolutionTableCompanion toCompanion(bool nullToAbsent) {
    return EvolutionTableCompanion(
      fromPokemonId: Value(fromPokemonId),
      toPokemonId: Value(toPokemonId),
      trigger: Value(trigger),
      minLevel: minLevel == null && nullToAbsent
          ? const Value.absent()
          : Value(minLevel),
    );
  }

  factory EvolutionRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EvolutionRow(
      fromPokemonId: serializer.fromJson<int>(json['fromPokemonId']),
      toPokemonId: serializer.fromJson<int>(json['toPokemonId']),
      trigger: serializer.fromJson<String>(json['trigger']),
      minLevel: serializer.fromJson<int?>(json['minLevel']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'fromPokemonId': serializer.toJson<int>(fromPokemonId),
      'toPokemonId': serializer.toJson<int>(toPokemonId),
      'trigger': serializer.toJson<String>(trigger),
      'minLevel': serializer.toJson<int?>(minLevel),
    };
  }

  EvolutionRow copyWith({
    int? fromPokemonId,
    int? toPokemonId,
    String? trigger,
    Value<int?> minLevel = const Value.absent(),
  }) => EvolutionRow(
    fromPokemonId: fromPokemonId ?? this.fromPokemonId,
    toPokemonId: toPokemonId ?? this.toPokemonId,
    trigger: trigger ?? this.trigger,
    minLevel: minLevel.present ? minLevel.value : this.minLevel,
  );
  EvolutionRow copyWithCompanion(EvolutionTableCompanion data) {
    return EvolutionRow(
      fromPokemonId: data.fromPokemonId.present
          ? data.fromPokemonId.value
          : this.fromPokemonId,
      toPokemonId: data.toPokemonId.present
          ? data.toPokemonId.value
          : this.toPokemonId,
      trigger: data.trigger.present ? data.trigger.value : this.trigger,
      minLevel: data.minLevel.present ? data.minLevel.value : this.minLevel,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EvolutionRow(')
          ..write('fromPokemonId: $fromPokemonId, ')
          ..write('toPokemonId: $toPokemonId, ')
          ..write('trigger: $trigger, ')
          ..write('minLevel: $minLevel')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(fromPokemonId, toPokemonId, trigger, minLevel);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EvolutionRow &&
          other.fromPokemonId == this.fromPokemonId &&
          other.toPokemonId == this.toPokemonId &&
          other.trigger == this.trigger &&
          other.minLevel == this.minLevel);
}

class EvolutionTableCompanion extends UpdateCompanion<EvolutionRow> {
  final Value<int> fromPokemonId;
  final Value<int> toPokemonId;
  final Value<String> trigger;
  final Value<int?> minLevel;
  final Value<int> rowid;
  const EvolutionTableCompanion({
    this.fromPokemonId = const Value.absent(),
    this.toPokemonId = const Value.absent(),
    this.trigger = const Value.absent(),
    this.minLevel = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EvolutionTableCompanion.insert({
    required int fromPokemonId,
    required int toPokemonId,
    required String trigger,
    this.minLevel = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : fromPokemonId = Value(fromPokemonId),
       toPokemonId = Value(toPokemonId),
       trigger = Value(trigger);
  static Insertable<EvolutionRow> custom({
    Expression<int>? fromPokemonId,
    Expression<int>? toPokemonId,
    Expression<String>? trigger,
    Expression<int>? minLevel,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (fromPokemonId != null) 'from_pokemon_id': fromPokemonId,
      if (toPokemonId != null) 'to_pokemon_id': toPokemonId,
      if (trigger != null) 'trigger': trigger,
      if (minLevel != null) 'min_level': minLevel,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EvolutionTableCompanion copyWith({
    Value<int>? fromPokemonId,
    Value<int>? toPokemonId,
    Value<String>? trigger,
    Value<int?>? minLevel,
    Value<int>? rowid,
  }) {
    return EvolutionTableCompanion(
      fromPokemonId: fromPokemonId ?? this.fromPokemonId,
      toPokemonId: toPokemonId ?? this.toPokemonId,
      trigger: trigger ?? this.trigger,
      minLevel: minLevel ?? this.minLevel,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (fromPokemonId.present) {
      map['from_pokemon_id'] = Variable<int>(fromPokemonId.value);
    }
    if (toPokemonId.present) {
      map['to_pokemon_id'] = Variable<int>(toPokemonId.value);
    }
    if (trigger.present) {
      map['trigger'] = Variable<String>(trigger.value);
    }
    if (minLevel.present) {
      map['min_level'] = Variable<int>(minLevel.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EvolutionTableCompanion(')
          ..write('fromPokemonId: $fromPokemonId, ')
          ..write('toPokemonId: $toPokemonId, ')
          ..write('trigger: $trigger, ')
          ..write('minLevel: $minLevel, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FormTableTable extends FormTable
    with TableInfo<$FormTableTable, FormRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FormTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _pokemonIdMeta = const VerificationMeta(
    'pokemonId',
  );
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
    'pokemon_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemon_table (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageUrlMeta = const VerificationMeta(
    'imageUrl',
  );
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
    'image_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isDefaultMeta = const VerificationMeta(
    'isDefault',
  );
  @override
  late final GeneratedColumn<bool> isDefault = GeneratedColumn<bool>(
    'is_default',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_default" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    pokemonId,
    name,
    imageUrl,
    isDefault,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'form_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<FormRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('pokemon_id')) {
      context.handle(
        _pokemonIdMeta,
        pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pokemonIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(
        _imageUrlMeta,
        imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta),
      );
    }
    if (data.containsKey('is_default')) {
      context.handle(
        _isDefaultMeta,
        isDefault.isAcceptableOrUnknown(data['is_default']!, _isDefaultMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FormRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FormRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      pokemonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pokemon_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      imageUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_url'],
      ),
      isDefault: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_default'],
      )!,
    );
  }

  @override
  $FormTableTable createAlias(String alias) {
    return $FormTableTable(attachedDatabase, alias);
  }
}

class FormRow extends DataClass implements Insertable<FormRow> {
  final int id;
  final int pokemonId;
  final String name;
  final String? imageUrl;
  final bool isDefault;
  const FormRow({
    required this.id,
    required this.pokemonId,
    required this.name,
    this.imageUrl,
    required this.isDefault,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['pokemon_id'] = Variable<int>(pokemonId);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    map['is_default'] = Variable<bool>(isDefault);
    return map;
  }

  FormTableCompanion toCompanion(bool nullToAbsent) {
    return FormTableCompanion(
      id: Value(id),
      pokemonId: Value(pokemonId),
      name: Value(name),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      isDefault: Value(isDefault),
    );
  }

  factory FormRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FormRow(
      id: serializer.fromJson<int>(json['id']),
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      name: serializer.fromJson<String>(json['name']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      isDefault: serializer.fromJson<bool>(json['isDefault']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'pokemonId': serializer.toJson<int>(pokemonId),
      'name': serializer.toJson<String>(name),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'isDefault': serializer.toJson<bool>(isDefault),
    };
  }

  FormRow copyWith({
    int? id,
    int? pokemonId,
    String? name,
    Value<String?> imageUrl = const Value.absent(),
    bool? isDefault,
  }) => FormRow(
    id: id ?? this.id,
    pokemonId: pokemonId ?? this.pokemonId,
    name: name ?? this.name,
    imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
    isDefault: isDefault ?? this.isDefault,
  );
  FormRow copyWithCompanion(FormTableCompanion data) {
    return FormRow(
      id: data.id.present ? data.id.value : this.id,
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      name: data.name.present ? data.name.value : this.name,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      isDefault: data.isDefault.present ? data.isDefault.value : this.isDefault,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FormRow(')
          ..write('id: $id, ')
          ..write('pokemonId: $pokemonId, ')
          ..write('name: $name, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('isDefault: $isDefault')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, pokemonId, name, imageUrl, isDefault);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FormRow &&
          other.id == this.id &&
          other.pokemonId == this.pokemonId &&
          other.name == this.name &&
          other.imageUrl == this.imageUrl &&
          other.isDefault == this.isDefault);
}

class FormTableCompanion extends UpdateCompanion<FormRow> {
  final Value<int> id;
  final Value<int> pokemonId;
  final Value<String> name;
  final Value<String?> imageUrl;
  final Value<bool> isDefault;
  const FormTableCompanion({
    this.id = const Value.absent(),
    this.pokemonId = const Value.absent(),
    this.name = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.isDefault = const Value.absent(),
  });
  FormTableCompanion.insert({
    this.id = const Value.absent(),
    required int pokemonId,
    required String name,
    this.imageUrl = const Value.absent(),
    this.isDefault = const Value.absent(),
  }) : pokemonId = Value(pokemonId),
       name = Value(name);
  static Insertable<FormRow> custom({
    Expression<int>? id,
    Expression<int>? pokemonId,
    Expression<String>? name,
    Expression<String>? imageUrl,
    Expression<bool>? isDefault,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (name != null) 'name': name,
      if (imageUrl != null) 'image_url': imageUrl,
      if (isDefault != null) 'is_default': isDefault,
    });
  }

  FormTableCompanion copyWith({
    Value<int>? id,
    Value<int>? pokemonId,
    Value<String>? name,
    Value<String?>? imageUrl,
    Value<bool>? isDefault,
  }) {
    return FormTableCompanion(
      id: id ?? this.id,
      pokemonId: pokemonId ?? this.pokemonId,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      isDefault: isDefault ?? this.isDefault,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (isDefault.present) {
      map['is_default'] = Variable<bool>(isDefault.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FormTableCompanion(')
          ..write('id: $id, ')
          ..write('pokemonId: $pokemonId, ')
          ..write('name: $name, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('isDefault: $isDefault')
          ..write(')'))
        .toString();
  }
}

class $FormTypeTableTable extends FormTypeTable
    with TableInfo<$FormTypeTableTable, FormTypeRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FormTypeTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _formIdMeta = const VerificationMeta('formId');
  @override
  late final GeneratedColumn<int> formId = GeneratedColumn<int>(
    'form_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES form_table (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _typeIdMeta = const VerificationMeta('typeId');
  @override
  late final GeneratedColumn<int> typeId = GeneratedColumn<int>(
    'type_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES type_table (id)',
    ),
  );
  static const VerificationMeta _slotMeta = const VerificationMeta('slot');
  @override
  late final GeneratedColumn<int> slot = GeneratedColumn<int>(
    'slot',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [formId, typeId, slot];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'form_type_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<FormTypeRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('form_id')) {
      context.handle(
        _formIdMeta,
        formId.isAcceptableOrUnknown(data['form_id']!, _formIdMeta),
      );
    } else if (isInserting) {
      context.missing(_formIdMeta);
    }
    if (data.containsKey('type_id')) {
      context.handle(
        _typeIdMeta,
        typeId.isAcceptableOrUnknown(data['type_id']!, _typeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_typeIdMeta);
    }
    if (data.containsKey('slot')) {
      context.handle(
        _slotMeta,
        slot.isAcceptableOrUnknown(data['slot']!, _slotMeta),
      );
    } else if (isInserting) {
      context.missing(_slotMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {formId, slot};
  @override
  FormTypeRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FormTypeRow(
      formId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}form_id'],
      )!,
      typeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}type_id'],
      )!,
      slot: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}slot'],
      )!,
    );
  }

  @override
  $FormTypeTableTable createAlias(String alias) {
    return $FormTypeTableTable(attachedDatabase, alias);
  }
}

class FormTypeRow extends DataClass implements Insertable<FormTypeRow> {
  final int formId;
  final int typeId;
  final int slot;
  const FormTypeRow({
    required this.formId,
    required this.typeId,
    required this.slot,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['form_id'] = Variable<int>(formId);
    map['type_id'] = Variable<int>(typeId);
    map['slot'] = Variable<int>(slot);
    return map;
  }

  FormTypeTableCompanion toCompanion(bool nullToAbsent) {
    return FormTypeTableCompanion(
      formId: Value(formId),
      typeId: Value(typeId),
      slot: Value(slot),
    );
  }

  factory FormTypeRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FormTypeRow(
      formId: serializer.fromJson<int>(json['formId']),
      typeId: serializer.fromJson<int>(json['typeId']),
      slot: serializer.fromJson<int>(json['slot']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'formId': serializer.toJson<int>(formId),
      'typeId': serializer.toJson<int>(typeId),
      'slot': serializer.toJson<int>(slot),
    };
  }

  FormTypeRow copyWith({int? formId, int? typeId, int? slot}) => FormTypeRow(
    formId: formId ?? this.formId,
    typeId: typeId ?? this.typeId,
    slot: slot ?? this.slot,
  );
  FormTypeRow copyWithCompanion(FormTypeTableCompanion data) {
    return FormTypeRow(
      formId: data.formId.present ? data.formId.value : this.formId,
      typeId: data.typeId.present ? data.typeId.value : this.typeId,
      slot: data.slot.present ? data.slot.value : this.slot,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FormTypeRow(')
          ..write('formId: $formId, ')
          ..write('typeId: $typeId, ')
          ..write('slot: $slot')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(formId, typeId, slot);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FormTypeRow &&
          other.formId == this.formId &&
          other.typeId == this.typeId &&
          other.slot == this.slot);
}

class FormTypeTableCompanion extends UpdateCompanion<FormTypeRow> {
  final Value<int> formId;
  final Value<int> typeId;
  final Value<int> slot;
  final Value<int> rowid;
  const FormTypeTableCompanion({
    this.formId = const Value.absent(),
    this.typeId = const Value.absent(),
    this.slot = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FormTypeTableCompanion.insert({
    required int formId,
    required int typeId,
    required int slot,
    this.rowid = const Value.absent(),
  }) : formId = Value(formId),
       typeId = Value(typeId),
       slot = Value(slot);
  static Insertable<FormTypeRow> custom({
    Expression<int>? formId,
    Expression<int>? typeId,
    Expression<int>? slot,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (formId != null) 'form_id': formId,
      if (typeId != null) 'type_id': typeId,
      if (slot != null) 'slot': slot,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FormTypeTableCompanion copyWith({
    Value<int>? formId,
    Value<int>? typeId,
    Value<int>? slot,
    Value<int>? rowid,
  }) {
    return FormTypeTableCompanion(
      formId: formId ?? this.formId,
      typeId: typeId ?? this.typeId,
      slot: slot ?? this.slot,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (formId.present) {
      map['form_id'] = Variable<int>(formId.value);
    }
    if (typeId.present) {
      map['type_id'] = Variable<int>(typeId.value);
    }
    if (slot.present) {
      map['slot'] = Variable<int>(slot.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FormTypeTableCompanion(')
          ..write('formId: $formId, ')
          ..write('typeId: $typeId, ')
          ..write('slot: $slot, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EggGroupTableTable extends EggGroupTable
    with TableInfo<$EggGroupTableTable, EggGroupRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EggGroupTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'egg_group_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<EggGroupRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EggGroupRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EggGroupRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
    );
  }

  @override
  $EggGroupTableTable createAlias(String alias) {
    return $EggGroupTableTable(attachedDatabase, alias);
  }
}

class EggGroupRow extends DataClass implements Insertable<EggGroupRow> {
  final int id;
  final String name;
  const EggGroupRow({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  EggGroupTableCompanion toCompanion(bool nullToAbsent) {
    return EggGroupTableCompanion(id: Value(id), name: Value(name));
  }

  factory EggGroupRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EggGroupRow(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  EggGroupRow copyWith({int? id, String? name}) =>
      EggGroupRow(id: id ?? this.id, name: name ?? this.name);
  EggGroupRow copyWithCompanion(EggGroupTableCompanion data) {
    return EggGroupRow(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EggGroupRow(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EggGroupRow && other.id == this.id && other.name == this.name);
}

class EggGroupTableCompanion extends UpdateCompanion<EggGroupRow> {
  final Value<int> id;
  final Value<String> name;
  const EggGroupTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  EggGroupTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<EggGroupRow> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  EggGroupTableCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return EggGroupTableCompanion(id: id ?? this.id, name: name ?? this.name);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EggGroupTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $PokemonEggGroupTableTable extends PokemonEggGroupTable
    with TableInfo<$PokemonEggGroupTableTable, PokemonEggGroupRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonEggGroupTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pokemonIdMeta = const VerificationMeta(
    'pokemonId',
  );
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
    'pokemon_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemon_table (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _eggGroupIdMeta = const VerificationMeta(
    'eggGroupId',
  );
  @override
  late final GeneratedColumn<int> eggGroupId = GeneratedColumn<int>(
    'egg_group_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES egg_group_table (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [pokemonId, eggGroupId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_egg_group_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<PokemonEggGroupRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pokemon_id')) {
      context.handle(
        _pokemonIdMeta,
        pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pokemonIdMeta);
    }
    if (data.containsKey('egg_group_id')) {
      context.handle(
        _eggGroupIdMeta,
        eggGroupId.isAcceptableOrUnknown(
          data['egg_group_id']!,
          _eggGroupIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_eggGroupIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pokemonId, eggGroupId};
  @override
  PokemonEggGroupRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonEggGroupRow(
      pokemonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pokemon_id'],
      )!,
      eggGroupId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}egg_group_id'],
      )!,
    );
  }

  @override
  $PokemonEggGroupTableTable createAlias(String alias) {
    return $PokemonEggGroupTableTable(attachedDatabase, alias);
  }
}

class PokemonEggGroupRow extends DataClass
    implements Insertable<PokemonEggGroupRow> {
  final int pokemonId;
  final int eggGroupId;
  const PokemonEggGroupRow({required this.pokemonId, required this.eggGroupId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pokemon_id'] = Variable<int>(pokemonId);
    map['egg_group_id'] = Variable<int>(eggGroupId);
    return map;
  }

  PokemonEggGroupTableCompanion toCompanion(bool nullToAbsent) {
    return PokemonEggGroupTableCompanion(
      pokemonId: Value(pokemonId),
      eggGroupId: Value(eggGroupId),
    );
  }

  factory PokemonEggGroupRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonEggGroupRow(
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      eggGroupId: serializer.fromJson<int>(json['eggGroupId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pokemonId': serializer.toJson<int>(pokemonId),
      'eggGroupId': serializer.toJson<int>(eggGroupId),
    };
  }

  PokemonEggGroupRow copyWith({int? pokemonId, int? eggGroupId}) =>
      PokemonEggGroupRow(
        pokemonId: pokemonId ?? this.pokemonId,
        eggGroupId: eggGroupId ?? this.eggGroupId,
      );
  PokemonEggGroupRow copyWithCompanion(PokemonEggGroupTableCompanion data) {
    return PokemonEggGroupRow(
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      eggGroupId: data.eggGroupId.present
          ? data.eggGroupId.value
          : this.eggGroupId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PokemonEggGroupRow(')
          ..write('pokemonId: $pokemonId, ')
          ..write('eggGroupId: $eggGroupId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(pokemonId, eggGroupId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonEggGroupRow &&
          other.pokemonId == this.pokemonId &&
          other.eggGroupId == this.eggGroupId);
}

class PokemonEggGroupTableCompanion
    extends UpdateCompanion<PokemonEggGroupRow> {
  final Value<int> pokemonId;
  final Value<int> eggGroupId;
  final Value<int> rowid;
  const PokemonEggGroupTableCompanion({
    this.pokemonId = const Value.absent(),
    this.eggGroupId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PokemonEggGroupTableCompanion.insert({
    required int pokemonId,
    required int eggGroupId,
    this.rowid = const Value.absent(),
  }) : pokemonId = Value(pokemonId),
       eggGroupId = Value(eggGroupId);
  static Insertable<PokemonEggGroupRow> custom({
    Expression<int>? pokemonId,
    Expression<int>? eggGroupId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (eggGroupId != null) 'egg_group_id': eggGroupId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PokemonEggGroupTableCompanion copyWith({
    Value<int>? pokemonId,
    Value<int>? eggGroupId,
    Value<int>? rowid,
  }) {
    return PokemonEggGroupTableCompanion(
      pokemonId: pokemonId ?? this.pokemonId,
      eggGroupId: eggGroupId ?? this.eggGroupId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (eggGroupId.present) {
      map['egg_group_id'] = Variable<int>(eggGroupId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonEggGroupTableCompanion(')
          ..write('pokemonId: $pokemonId, ')
          ..write('eggGroupId: $eggGroupId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TypeMatchupTableTable extends TypeMatchupTable
    with TableInfo<$TypeMatchupTableTable, TypeMatchupRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TypeMatchupTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _attackingTypeIdMeta = const VerificationMeta(
    'attackingTypeId',
  );
  @override
  late final GeneratedColumn<int> attackingTypeId = GeneratedColumn<int>(
    'attacking_type_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES type_table (id)',
    ),
  );
  static const VerificationMeta _defendingTypeIdMeta = const VerificationMeta(
    'defendingTypeId',
  );
  @override
  late final GeneratedColumn<int> defendingTypeId = GeneratedColumn<int>(
    'defending_type_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES type_table (id)',
    ),
  );
  static const VerificationMeta _multiplierMeta = const VerificationMeta(
    'multiplier',
  );
  @override
  late final GeneratedColumn<double> multiplier = GeneratedColumn<double>(
    'multiplier',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    attackingTypeId,
    defendingTypeId,
    multiplier,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'type_matchup_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<TypeMatchupRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('attacking_type_id')) {
      context.handle(
        _attackingTypeIdMeta,
        attackingTypeId.isAcceptableOrUnknown(
          data['attacking_type_id']!,
          _attackingTypeIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_attackingTypeIdMeta);
    }
    if (data.containsKey('defending_type_id')) {
      context.handle(
        _defendingTypeIdMeta,
        defendingTypeId.isAcceptableOrUnknown(
          data['defending_type_id']!,
          _defendingTypeIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_defendingTypeIdMeta);
    }
    if (data.containsKey('multiplier')) {
      context.handle(
        _multiplierMeta,
        multiplier.isAcceptableOrUnknown(data['multiplier']!, _multiplierMeta),
      );
    } else if (isInserting) {
      context.missing(_multiplierMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {attackingTypeId, defendingTypeId};
  @override
  TypeMatchupRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TypeMatchupRow(
      attackingTypeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}attacking_type_id'],
      )!,
      defendingTypeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}defending_type_id'],
      )!,
      multiplier: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}multiplier'],
      )!,
    );
  }

  @override
  $TypeMatchupTableTable createAlias(String alias) {
    return $TypeMatchupTableTable(attachedDatabase, alias);
  }
}

class TypeMatchupRow extends DataClass implements Insertable<TypeMatchupRow> {
  final int attackingTypeId;
  final int defendingTypeId;
  final double multiplier;
  const TypeMatchupRow({
    required this.attackingTypeId,
    required this.defendingTypeId,
    required this.multiplier,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['attacking_type_id'] = Variable<int>(attackingTypeId);
    map['defending_type_id'] = Variable<int>(defendingTypeId);
    map['multiplier'] = Variable<double>(multiplier);
    return map;
  }

  TypeMatchupTableCompanion toCompanion(bool nullToAbsent) {
    return TypeMatchupTableCompanion(
      attackingTypeId: Value(attackingTypeId),
      defendingTypeId: Value(defendingTypeId),
      multiplier: Value(multiplier),
    );
  }

  factory TypeMatchupRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TypeMatchupRow(
      attackingTypeId: serializer.fromJson<int>(json['attackingTypeId']),
      defendingTypeId: serializer.fromJson<int>(json['defendingTypeId']),
      multiplier: serializer.fromJson<double>(json['multiplier']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'attackingTypeId': serializer.toJson<int>(attackingTypeId),
      'defendingTypeId': serializer.toJson<int>(defendingTypeId),
      'multiplier': serializer.toJson<double>(multiplier),
    };
  }

  TypeMatchupRow copyWith({
    int? attackingTypeId,
    int? defendingTypeId,
    double? multiplier,
  }) => TypeMatchupRow(
    attackingTypeId: attackingTypeId ?? this.attackingTypeId,
    defendingTypeId: defendingTypeId ?? this.defendingTypeId,
    multiplier: multiplier ?? this.multiplier,
  );
  TypeMatchupRow copyWithCompanion(TypeMatchupTableCompanion data) {
    return TypeMatchupRow(
      attackingTypeId: data.attackingTypeId.present
          ? data.attackingTypeId.value
          : this.attackingTypeId,
      defendingTypeId: data.defendingTypeId.present
          ? data.defendingTypeId.value
          : this.defendingTypeId,
      multiplier: data.multiplier.present
          ? data.multiplier.value
          : this.multiplier,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TypeMatchupRow(')
          ..write('attackingTypeId: $attackingTypeId, ')
          ..write('defendingTypeId: $defendingTypeId, ')
          ..write('multiplier: $multiplier')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(attackingTypeId, defendingTypeId, multiplier);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TypeMatchupRow &&
          other.attackingTypeId == this.attackingTypeId &&
          other.defendingTypeId == this.defendingTypeId &&
          other.multiplier == this.multiplier);
}

class TypeMatchupTableCompanion extends UpdateCompanion<TypeMatchupRow> {
  final Value<int> attackingTypeId;
  final Value<int> defendingTypeId;
  final Value<double> multiplier;
  final Value<int> rowid;
  const TypeMatchupTableCompanion({
    this.attackingTypeId = const Value.absent(),
    this.defendingTypeId = const Value.absent(),
    this.multiplier = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TypeMatchupTableCompanion.insert({
    required int attackingTypeId,
    required int defendingTypeId,
    required double multiplier,
    this.rowid = const Value.absent(),
  }) : attackingTypeId = Value(attackingTypeId),
       defendingTypeId = Value(defendingTypeId),
       multiplier = Value(multiplier);
  static Insertable<TypeMatchupRow> custom({
    Expression<int>? attackingTypeId,
    Expression<int>? defendingTypeId,
    Expression<double>? multiplier,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (attackingTypeId != null) 'attacking_type_id': attackingTypeId,
      if (defendingTypeId != null) 'defending_type_id': defendingTypeId,
      if (multiplier != null) 'multiplier': multiplier,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TypeMatchupTableCompanion copyWith({
    Value<int>? attackingTypeId,
    Value<int>? defendingTypeId,
    Value<double>? multiplier,
    Value<int>? rowid,
  }) {
    return TypeMatchupTableCompanion(
      attackingTypeId: attackingTypeId ?? this.attackingTypeId,
      defendingTypeId: defendingTypeId ?? this.defendingTypeId,
      multiplier: multiplier ?? this.multiplier,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (attackingTypeId.present) {
      map['attacking_type_id'] = Variable<int>(attackingTypeId.value);
    }
    if (defendingTypeId.present) {
      map['defending_type_id'] = Variable<int>(defendingTypeId.value);
    }
    if (multiplier.present) {
      map['multiplier'] = Variable<double>(multiplier.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TypeMatchupTableCompanion(')
          ..write('attackingTypeId: $attackingTypeId, ')
          ..write('defendingTypeId: $defendingTypeId, ')
          ..write('multiplier: $multiplier, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SyncMetadataTableTable extends SyncMetadataTable
    with TableInfo<$SyncMetadataTableTable, SyncMetadataRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncMetadataTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _resourceKeyMeta = const VerificationMeta(
    'resourceKey',
  );
  @override
  late final GeneratedColumn<String> resourceKey = GeneratedColumn<String>(
    'resource_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<SyncStatus, String> status =
      GeneratedColumn<String>(
        'status',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      ).withConverter<SyncStatus>($SyncMetadataTableTable.$converterstatus);
  static const VerificationMeta _nextOffsetMeta = const VerificationMeta(
    'nextOffset',
  );
  @override
  late final GeneratedColumn<int> nextOffset = GeneratedColumn<int>(
    'next_offset',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _lastSuccessAtMeta = const VerificationMeta(
    'lastSuccessAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastSuccessAt =
      GeneratedColumn<DateTime>(
        'last_success_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  @override
  List<GeneratedColumn> get $columns => [
    resourceKey,
    status,
    nextOffset,
    lastSuccessAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_metadata_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<SyncMetadataRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('resource_key')) {
      context.handle(
        _resourceKeyMeta,
        resourceKey.isAcceptableOrUnknown(
          data['resource_key']!,
          _resourceKeyMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_resourceKeyMeta);
    }
    if (data.containsKey('next_offset')) {
      context.handle(
        _nextOffsetMeta,
        nextOffset.isAcceptableOrUnknown(data['next_offset']!, _nextOffsetMeta),
      );
    }
    if (data.containsKey('last_success_at')) {
      context.handle(
        _lastSuccessAtMeta,
        lastSuccessAt.isAcceptableOrUnknown(
          data['last_success_at']!,
          _lastSuccessAtMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {resourceKey};
  @override
  SyncMetadataRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncMetadataRow(
      resourceKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}resource_key'],
      )!,
      status: $SyncMetadataTableTable.$converterstatus.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}status'],
        )!,
      ),
      nextOffset: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}next_offset'],
      )!,
      lastSuccessAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_success_at'],
      ),
    );
  }

  @override
  $SyncMetadataTableTable createAlias(String alias) {
    return $SyncMetadataTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<SyncStatus, String, String> $converterstatus =
      const EnumNameConverter<SyncStatus>(SyncStatus.values);
}

class SyncMetadataRow extends DataClass implements Insertable<SyncMetadataRow> {
  /// Nombre del recurso sincronizado. Ejemplo: `pokemon_catalog`.
  final String resourceKey;

  /// Drift lo guarda como texto, con el nombre del valor del enum.
  final SyncStatus status;

  /// Posición del catálogo desde la que debe continuar la descarga.
  final int nextOffset;

  /// Fecha de la última sincronización completa; `null` si nunca terminó una.
  final DateTime? lastSuccessAt;
  const SyncMetadataRow({
    required this.resourceKey,
    required this.status,
    required this.nextOffset,
    this.lastSuccessAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['resource_key'] = Variable<String>(resourceKey);
    {
      map['status'] = Variable<String>(
        $SyncMetadataTableTable.$converterstatus.toSql(status),
      );
    }
    map['next_offset'] = Variable<int>(nextOffset);
    if (!nullToAbsent || lastSuccessAt != null) {
      map['last_success_at'] = Variable<DateTime>(lastSuccessAt);
    }
    return map;
  }

  SyncMetadataTableCompanion toCompanion(bool nullToAbsent) {
    return SyncMetadataTableCompanion(
      resourceKey: Value(resourceKey),
      status: Value(status),
      nextOffset: Value(nextOffset),
      lastSuccessAt: lastSuccessAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSuccessAt),
    );
  }

  factory SyncMetadataRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncMetadataRow(
      resourceKey: serializer.fromJson<String>(json['resourceKey']),
      status: $SyncMetadataTableTable.$converterstatus.fromJson(
        serializer.fromJson<String>(json['status']),
      ),
      nextOffset: serializer.fromJson<int>(json['nextOffset']),
      lastSuccessAt: serializer.fromJson<DateTime?>(json['lastSuccessAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'resourceKey': serializer.toJson<String>(resourceKey),
      'status': serializer.toJson<String>(
        $SyncMetadataTableTable.$converterstatus.toJson(status),
      ),
      'nextOffset': serializer.toJson<int>(nextOffset),
      'lastSuccessAt': serializer.toJson<DateTime?>(lastSuccessAt),
    };
  }

  SyncMetadataRow copyWith({
    String? resourceKey,
    SyncStatus? status,
    int? nextOffset,
    Value<DateTime?> lastSuccessAt = const Value.absent(),
  }) => SyncMetadataRow(
    resourceKey: resourceKey ?? this.resourceKey,
    status: status ?? this.status,
    nextOffset: nextOffset ?? this.nextOffset,
    lastSuccessAt: lastSuccessAt.present
        ? lastSuccessAt.value
        : this.lastSuccessAt,
  );
  SyncMetadataRow copyWithCompanion(SyncMetadataTableCompanion data) {
    return SyncMetadataRow(
      resourceKey: data.resourceKey.present
          ? data.resourceKey.value
          : this.resourceKey,
      status: data.status.present ? data.status.value : this.status,
      nextOffset: data.nextOffset.present
          ? data.nextOffset.value
          : this.nextOffset,
      lastSuccessAt: data.lastSuccessAt.present
          ? data.lastSuccessAt.value
          : this.lastSuccessAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncMetadataRow(')
          ..write('resourceKey: $resourceKey, ')
          ..write('status: $status, ')
          ..write('nextOffset: $nextOffset, ')
          ..write('lastSuccessAt: $lastSuccessAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(resourceKey, status, nextOffset, lastSuccessAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncMetadataRow &&
          other.resourceKey == this.resourceKey &&
          other.status == this.status &&
          other.nextOffset == this.nextOffset &&
          other.lastSuccessAt == this.lastSuccessAt);
}

class SyncMetadataTableCompanion extends UpdateCompanion<SyncMetadataRow> {
  final Value<String> resourceKey;
  final Value<SyncStatus> status;
  final Value<int> nextOffset;
  final Value<DateTime?> lastSuccessAt;
  final Value<int> rowid;
  const SyncMetadataTableCompanion({
    this.resourceKey = const Value.absent(),
    this.status = const Value.absent(),
    this.nextOffset = const Value.absent(),
    this.lastSuccessAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SyncMetadataTableCompanion.insert({
    required String resourceKey,
    required SyncStatus status,
    this.nextOffset = const Value.absent(),
    this.lastSuccessAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : resourceKey = Value(resourceKey),
       status = Value(status);
  static Insertable<SyncMetadataRow> custom({
    Expression<String>? resourceKey,
    Expression<String>? status,
    Expression<int>? nextOffset,
    Expression<DateTime>? lastSuccessAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (resourceKey != null) 'resource_key': resourceKey,
      if (status != null) 'status': status,
      if (nextOffset != null) 'next_offset': nextOffset,
      if (lastSuccessAt != null) 'last_success_at': lastSuccessAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SyncMetadataTableCompanion copyWith({
    Value<String>? resourceKey,
    Value<SyncStatus>? status,
    Value<int>? nextOffset,
    Value<DateTime?>? lastSuccessAt,
    Value<int>? rowid,
  }) {
    return SyncMetadataTableCompanion(
      resourceKey: resourceKey ?? this.resourceKey,
      status: status ?? this.status,
      nextOffset: nextOffset ?? this.nextOffset,
      lastSuccessAt: lastSuccessAt ?? this.lastSuccessAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (resourceKey.present) {
      map['resource_key'] = Variable<String>(resourceKey.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(
        $SyncMetadataTableTable.$converterstatus.toSql(status.value),
      );
    }
    if (nextOffset.present) {
      map['next_offset'] = Variable<int>(nextOffset.value);
    }
    if (lastSuccessAt.present) {
      map['last_success_at'] = Variable<DateTime>(lastSuccessAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncMetadataTableCompanion(')
          ..write('resourceKey: $resourceKey, ')
          ..write('status: $status, ')
          ..write('nextOffset: $nextOffset, ')
          ..write('lastSuccessAt: $lastSuccessAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $PokemonTableTable pokemonTable = $PokemonTableTable(this);
  late final $FavoriteTableTable favoriteTable = $FavoriteTableTable(this);
  late final $TypeTableTable typeTable = $TypeTableTable(this);
  late final $PokemonTypeTableTable pokemonTypeTable = $PokemonTypeTableTable(
    this,
  );
  late final $StatTableTable statTable = $StatTableTable(this);
  late final $AbilityTableTable abilityTable = $AbilityTableTable(this);
  late final $PokemonAbilityTableTable pokemonAbilityTable =
      $PokemonAbilityTableTable(this);
  late final $MoveTableTable moveTable = $MoveTableTable(this);
  late final $PokemonMoveTableTable pokemonMoveTable = $PokemonMoveTableTable(
    this,
  );
  late final $EvolutionTableTable evolutionTable = $EvolutionTableTable(this);
  late final $FormTableTable formTable = $FormTableTable(this);
  late final $FormTypeTableTable formTypeTable = $FormTypeTableTable(this);
  late final $EggGroupTableTable eggGroupTable = $EggGroupTableTable(this);
  late final $PokemonEggGroupTableTable pokemonEggGroupTable =
      $PokemonEggGroupTableTable(this);
  late final $TypeMatchupTableTable typeMatchupTable = $TypeMatchupTableTable(
    this,
  );
  late final $SyncMetadataTableTable syncMetadataTable =
      $SyncMetadataTableTable(this);
  late final Index idxPokemonGeneration = Index(
    'idx_pokemon_generation',
    'CREATE INDEX idx_pokemon_generation ON pokemon_table (generation)',
  );
  late final Index idxPokemonName = Index(
    'idx_pokemon_name',
    'CREATE INDEX idx_pokemon_name ON pokemon_table (name)',
  );
  late final Index idxPokemonBaseTotal = Index(
    'idx_pokemon_base_total',
    'CREATE INDEX idx_pokemon_base_total ON pokemon_table (base_total)',
  );
  late final Index idxPokemonTypeType = Index(
    'idx_pokemon_type_type',
    'CREATE INDEX idx_pokemon_type_type ON pokemon_type_table (type_id)',
  );
  late final Index idxPokemonMoveVersion = Index(
    'idx_pokemon_move_version',
    'CREATE INDEX idx_pokemon_move_version ON pokemon_move_table (pokemon_id, version_group)',
  );
  late final Index idxEvolutionFrom = Index(
    'idx_evolution_from',
    'CREATE INDEX idx_evolution_from ON evolution_table (from_pokemon_id)',
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    pokemonTable,
    favoriteTable,
    typeTable,
    pokemonTypeTable,
    statTable,
    abilityTable,
    pokemonAbilityTable,
    moveTable,
    pokemonMoveTable,
    evolutionTable,
    formTable,
    formTypeTable,
    eggGroupTable,
    pokemonEggGroupTable,
    typeMatchupTable,
    syncMetadataTable,
    idxPokemonGeneration,
    idxPokemonName,
    idxPokemonBaseTotal,
    idxPokemonTypeType,
    idxPokemonMoveVersion,
    idxEvolutionFrom,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'pokemon_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('pokemon_type_table', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'pokemon_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('stat_table', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'pokemon_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('pokemon_ability_table', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'pokemon_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('pokemon_move_table', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'pokemon_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('evolution_table', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'pokemon_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('evolution_table', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'pokemon_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('form_table', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'form_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('form_type_table', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'pokemon_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('pokemon_egg_group_table', kind: UpdateKind.delete)],
    ),
  ]);
}

typedef $$PokemonTableTableCreateCompanionBuilder =
    PokemonTableCompanion Function({
      Value<int> id,
      required int dexNumber,
      required String name,
      Value<int> generation,
      Value<int> baseTotal,
      Value<int> heightDm,
      Value<int> weightHg,
      required String types,
      Value<String?> imageUrl,
      Value<DateTime> updatedAt,
    });
typedef $$PokemonTableTableUpdateCompanionBuilder =
    PokemonTableCompanion Function({
      Value<int> id,
      Value<int> dexNumber,
      Value<String> name,
      Value<int> generation,
      Value<int> baseTotal,
      Value<int> heightDm,
      Value<int> weightHg,
      Value<String> types,
      Value<String?> imageUrl,
      Value<DateTime> updatedAt,
    });

final class $$PokemonTableTableReferences
    extends BaseReferences<_$AppDatabase, $PokemonTableTable, PokemonRow> {
  $$PokemonTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PokemonTypeTableTable, List<PokemonTypeRow>>
  _pokemonTypeTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pokemonTypeTable,
    aliasName: 'pokemon_table__id__pokemon_type_table__pokemon_id',
  );

  $$PokemonTypeTableTableProcessedTableManager get pokemonTypeTableRefs {
    final manager = $$PokemonTypeTableTableTableManager(
      $_db,
      $_db.pokemonTypeTable,
    ).filter((f) => f.pokemonId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _pokemonTypeTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$StatTableTable, List<StatRow>>
  _statTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.statTable,
    aliasName: 'pokemon_table__id__stat_table__pokemon_id',
  );

  $$StatTableTableProcessedTableManager get statTableRefs {
    final manager = $$StatTableTableTableManager(
      $_db,
      $_db.statTable,
    ).filter((f) => f.pokemonId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_statTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$PokemonAbilityTableTable, List<PokemonAbilityRow>>
  _pokemonAbilityTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.pokemonAbilityTable,
        aliasName: 'pokemon_table__id__pokemon_ability_table__pokemon_id',
      );

  $$PokemonAbilityTableTableProcessedTableManager get pokemonAbilityTableRefs {
    final manager = $$PokemonAbilityTableTableTableManager(
      $_db,
      $_db.pokemonAbilityTable,
    ).filter((f) => f.pokemonId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _pokemonAbilityTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$PokemonMoveTableTable, List<PokemonMoveRow>>
  _pokemonMoveTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pokemonMoveTable,
    aliasName: 'pokemon_table__id__pokemon_move_table__pokemon_id',
  );

  $$PokemonMoveTableTableProcessedTableManager get pokemonMoveTableRefs {
    final manager = $$PokemonMoveTableTableTableManager(
      $_db,
      $_db.pokemonMoveTable,
    ).filter((f) => f.pokemonId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _pokemonMoveTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$EvolutionTableTable, List<EvolutionRow>>
  _fromEvolutionsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.evolutionTable,
    aliasName: 'pokemon_table__id__evolution_table__from_pokemon_id',
  );

  $$EvolutionTableTableProcessedTableManager get fromEvolutions {
    final manager = $$EvolutionTableTableTableManager(
      $_db,
      $_db.evolutionTable,
    ).filter((f) => f.fromPokemonId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_fromEvolutionsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$EvolutionTableTable, List<EvolutionRow>>
  _toEvolutionsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.evolutionTable,
    aliasName: 'pokemon_table__id__evolution_table__to_pokemon_id',
  );

  $$EvolutionTableTableProcessedTableManager get toEvolutions {
    final manager = $$EvolutionTableTableTableManager(
      $_db,
      $_db.evolutionTable,
    ).filter((f) => f.toPokemonId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_toEvolutionsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$FormTableTable, List<FormRow>>
  _formTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.formTable,
    aliasName: 'pokemon_table__id__form_table__pokemon_id',
  );

  $$FormTableTableProcessedTableManager get formTableRefs {
    final manager = $$FormTableTableTableManager(
      $_db,
      $_db.formTable,
    ).filter((f) => f.pokemonId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_formTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $PokemonEggGroupTableTable,
    List<PokemonEggGroupRow>
  >
  _pokemonEggGroupTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.pokemonEggGroupTable,
        aliasName: 'pokemon_table__id__pokemon_egg_group_table__pokemon_id',
      );

  $$PokemonEggGroupTableTableProcessedTableManager
  get pokemonEggGroupTableRefs {
    final manager = $$PokemonEggGroupTableTableTableManager(
      $_db,
      $_db.pokemonEggGroupTable,
    ).filter((f) => f.pokemonId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _pokemonEggGroupTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$PokemonTableTableFilterComposer
    extends Composer<_$AppDatabase, $PokemonTableTable> {
  $$PokemonTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get dexNumber => $composableBuilder(
    column: $table.dexNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get generation => $composableBuilder(
    column: $table.generation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get baseTotal => $composableBuilder(
    column: $table.baseTotal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get heightDm => $composableBuilder(
    column: $table.heightDm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get weightHg => $composableBuilder(
    column: $table.weightHg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get types => $composableBuilder(
    column: $table.types,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> pokemonTypeTableRefs(
    Expression<bool> Function($$PokemonTypeTableTableFilterComposer f) f,
  ) {
    final $$PokemonTypeTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonTypeTable,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTypeTableTableFilterComposer(
            $db: $db,
            $table: $db.pokemonTypeTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> statTableRefs(
    Expression<bool> Function($$StatTableTableFilterComposer f) f,
  ) {
    final $$StatTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.statTable,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StatTableTableFilterComposer(
            $db: $db,
            $table: $db.statTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> pokemonAbilityTableRefs(
    Expression<bool> Function($$PokemonAbilityTableTableFilterComposer f) f,
  ) {
    final $$PokemonAbilityTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonAbilityTable,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonAbilityTableTableFilterComposer(
            $db: $db,
            $table: $db.pokemonAbilityTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> pokemonMoveTableRefs(
    Expression<bool> Function($$PokemonMoveTableTableFilterComposer f) f,
  ) {
    final $$PokemonMoveTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonMoveTable,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonMoveTableTableFilterComposer(
            $db: $db,
            $table: $db.pokemonMoveTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> fromEvolutions(
    Expression<bool> Function($$EvolutionTableTableFilterComposer f) f,
  ) {
    final $$EvolutionTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.evolutionTable,
      getReferencedColumn: (t) => t.fromPokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EvolutionTableTableFilterComposer(
            $db: $db,
            $table: $db.evolutionTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> toEvolutions(
    Expression<bool> Function($$EvolutionTableTableFilterComposer f) f,
  ) {
    final $$EvolutionTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.evolutionTable,
      getReferencedColumn: (t) => t.toPokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EvolutionTableTableFilterComposer(
            $db: $db,
            $table: $db.evolutionTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> formTableRefs(
    Expression<bool> Function($$FormTableTableFilterComposer f) f,
  ) {
    final $$FormTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.formTable,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FormTableTableFilterComposer(
            $db: $db,
            $table: $db.formTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> pokemonEggGroupTableRefs(
    Expression<bool> Function($$PokemonEggGroupTableTableFilterComposer f) f,
  ) {
    final $$PokemonEggGroupTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonEggGroupTable,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonEggGroupTableTableFilterComposer(
            $db: $db,
            $table: $db.pokemonEggGroupTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PokemonTableTableOrderingComposer
    extends Composer<_$AppDatabase, $PokemonTableTable> {
  $$PokemonTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get dexNumber => $composableBuilder(
    column: $table.dexNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get generation => $composableBuilder(
    column: $table.generation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get baseTotal => $composableBuilder(
    column: $table.baseTotal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get heightDm => $composableBuilder(
    column: $table.heightDm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get weightHg => $composableBuilder(
    column: $table.weightHg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get types => $composableBuilder(
    column: $table.types,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PokemonTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $PokemonTableTable> {
  $$PokemonTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get dexNumber =>
      $composableBuilder(column: $table.dexNumber, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get generation => $composableBuilder(
    column: $table.generation,
    builder: (column) => column,
  );

  GeneratedColumn<int> get baseTotal =>
      $composableBuilder(column: $table.baseTotal, builder: (column) => column);

  GeneratedColumn<int> get heightDm =>
      $composableBuilder(column: $table.heightDm, builder: (column) => column);

  GeneratedColumn<int> get weightHg =>
      $composableBuilder(column: $table.weightHg, builder: (column) => column);

  GeneratedColumn<String> get types =>
      $composableBuilder(column: $table.types, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  Expression<T> pokemonTypeTableRefs<T extends Object>(
    Expression<T> Function($$PokemonTypeTableTableAnnotationComposer a) f,
  ) {
    final $$PokemonTypeTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonTypeTable,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTypeTableTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonTypeTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> statTableRefs<T extends Object>(
    Expression<T> Function($$StatTableTableAnnotationComposer a) f,
  ) {
    final $$StatTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.statTable,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StatTableTableAnnotationComposer(
            $db: $db,
            $table: $db.statTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> pokemonAbilityTableRefs<T extends Object>(
    Expression<T> Function($$PokemonAbilityTableTableAnnotationComposer a) f,
  ) {
    final $$PokemonAbilityTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.pokemonAbilityTable,
          getReferencedColumn: (t) => t.pokemonId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$PokemonAbilityTableTableAnnotationComposer(
                $db: $db,
                $table: $db.pokemonAbilityTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> pokemonMoveTableRefs<T extends Object>(
    Expression<T> Function($$PokemonMoveTableTableAnnotationComposer a) f,
  ) {
    final $$PokemonMoveTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonMoveTable,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonMoveTableTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonMoveTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> fromEvolutions<T extends Object>(
    Expression<T> Function($$EvolutionTableTableAnnotationComposer a) f,
  ) {
    final $$EvolutionTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.evolutionTable,
      getReferencedColumn: (t) => t.fromPokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EvolutionTableTableAnnotationComposer(
            $db: $db,
            $table: $db.evolutionTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> toEvolutions<T extends Object>(
    Expression<T> Function($$EvolutionTableTableAnnotationComposer a) f,
  ) {
    final $$EvolutionTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.evolutionTable,
      getReferencedColumn: (t) => t.toPokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EvolutionTableTableAnnotationComposer(
            $db: $db,
            $table: $db.evolutionTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> formTableRefs<T extends Object>(
    Expression<T> Function($$FormTableTableAnnotationComposer a) f,
  ) {
    final $$FormTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.formTable,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FormTableTableAnnotationComposer(
            $db: $db,
            $table: $db.formTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> pokemonEggGroupTableRefs<T extends Object>(
    Expression<T> Function($$PokemonEggGroupTableTableAnnotationComposer a) f,
  ) {
    final $$PokemonEggGroupTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.pokemonEggGroupTable,
          getReferencedColumn: (t) => t.pokemonId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$PokemonEggGroupTableTableAnnotationComposer(
                $db: $db,
                $table: $db.pokemonEggGroupTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$PokemonTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PokemonTableTable,
          PokemonRow,
          $$PokemonTableTableFilterComposer,
          $$PokemonTableTableOrderingComposer,
          $$PokemonTableTableAnnotationComposer,
          $$PokemonTableTableCreateCompanionBuilder,
          $$PokemonTableTableUpdateCompanionBuilder,
          (PokemonRow, $$PokemonTableTableReferences),
          PokemonRow,
          PrefetchHooks Function({
            bool pokemonTypeTableRefs,
            bool statTableRefs,
            bool pokemonAbilityTableRefs,
            bool pokemonMoveTableRefs,
            bool fromEvolutions,
            bool toEvolutions,
            bool formTableRefs,
            bool pokemonEggGroupTableRefs,
          })
        > {
  $$PokemonTableTableTableManager(_$AppDatabase db, $PokemonTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PokemonTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PokemonTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PokemonTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> dexNumber = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int> generation = const Value.absent(),
                Value<int> baseTotal = const Value.absent(),
                Value<int> heightDm = const Value.absent(),
                Value<int> weightHg = const Value.absent(),
                Value<String> types = const Value.absent(),
                Value<String?> imageUrl = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => PokemonTableCompanion(
                id: id,
                dexNumber: dexNumber,
                name: name,
                generation: generation,
                baseTotal: baseTotal,
                heightDm: heightDm,
                weightHg: weightHg,
                types: types,
                imageUrl: imageUrl,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int dexNumber,
                required String name,
                Value<int> generation = const Value.absent(),
                Value<int> baseTotal = const Value.absent(),
                Value<int> heightDm = const Value.absent(),
                Value<int> weightHg = const Value.absent(),
                required String types,
                Value<String?> imageUrl = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => PokemonTableCompanion.insert(
                id: id,
                dexNumber: dexNumber,
                name: name,
                generation: generation,
                baseTotal: baseTotal,
                heightDm: heightDm,
                weightHg: weightHg,
                types: types,
                imageUrl: imageUrl,
                updatedAt: updatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PokemonTableTable, PokemonRow>(table),
                  $$PokemonTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                pokemonTypeTableRefs = false,
                statTableRefs = false,
                pokemonAbilityTableRefs = false,
                pokemonMoveTableRefs = false,
                fromEvolutions = false,
                toEvolutions = false,
                formTableRefs = false,
                pokemonEggGroupTableRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (pokemonTypeTableRefs) db.pokemonTypeTable,
                    if (statTableRefs) db.statTable,
                    if (pokemonAbilityTableRefs) db.pokemonAbilityTable,
                    if (pokemonMoveTableRefs) db.pokemonMoveTable,
                    if (fromEvolutions) db.evolutionTable,
                    if (toEvolutions) db.evolutionTable,
                    if (formTableRefs) db.formTable,
                    if (pokemonEggGroupTableRefs) db.pokemonEggGroupTable,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (pokemonTypeTableRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonRow,
                          $PokemonTableTable,
                          PokemonTypeRow,
                          $PokemonTypeTableTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonTableTableReferences
                              ._pokemonTypeTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonTableTableReferences(
                                db,
                                table,
                                p0,
                              ).pokemonTypeTableRefs,
                          currentColumn: 'id',
                          referencedColumn: 'pokemon_id',
                          typedResults: items,
                        ),
                      if (statTableRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonRow,
                          $PokemonTableTable,
                          StatRow,
                          $StatTableTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonTableTableReferences
                              ._statTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonTableTableReferences(
                                db,
                                table,
                                p0,
                              ).statTableRefs,
                          currentColumn: 'id',
                          referencedColumn: 'pokemon_id',
                          typedResults: items,
                        ),
                      if (pokemonAbilityTableRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonRow,
                          $PokemonTableTable,
                          PokemonAbilityRow,
                          $PokemonAbilityTableTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonTableTableReferences
                              ._pokemonAbilityTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonTableTableReferences(
                                db,
                                table,
                                p0,
                              ).pokemonAbilityTableRefs,
                          currentColumn: 'id',
                          referencedColumn: 'pokemon_id',
                          typedResults: items,
                        ),
                      if (pokemonMoveTableRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonRow,
                          $PokemonTableTable,
                          PokemonMoveRow,
                          $PokemonMoveTableTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonTableTableReferences
                              ._pokemonMoveTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonTableTableReferences(
                                db,
                                table,
                                p0,
                              ).pokemonMoveTableRefs,
                          currentColumn: 'id',
                          referencedColumn: 'pokemon_id',
                          typedResults: items,
                        ),
                      if (fromEvolutions)
                        await $_getPrefetchedDataByColumns<
                          PokemonRow,
                          $PokemonTableTable,
                          EvolutionRow,
                          $EvolutionTableTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonTableTableReferences
                              ._fromEvolutionsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonTableTableReferences(
                                db,
                                table,
                                p0,
                              ).fromEvolutions,
                          currentColumn: 'id',
                          referencedColumn: 'from_pokemon_id',
                          typedResults: items,
                        ),
                      if (toEvolutions)
                        await $_getPrefetchedDataByColumns<
                          PokemonRow,
                          $PokemonTableTable,
                          EvolutionRow,
                          $EvolutionTableTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonTableTableReferences
                              ._toEvolutionsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonTableTableReferences(
                                db,
                                table,
                                p0,
                              ).toEvolutions,
                          currentColumn: 'id',
                          referencedColumn: 'to_pokemon_id',
                          typedResults: items,
                        ),
                      if (formTableRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonRow,
                          $PokemonTableTable,
                          FormRow,
                          $FormTableTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonTableTableReferences
                              ._formTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonTableTableReferences(
                                db,
                                table,
                                p0,
                              ).formTableRefs,
                          currentColumn: 'id',
                          referencedColumn: 'pokemon_id',
                          typedResults: items,
                        ),
                      if (pokemonEggGroupTableRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonRow,
                          $PokemonTableTable,
                          PokemonEggGroupRow,
                          $PokemonEggGroupTableTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonTableTableReferences
                              ._pokemonEggGroupTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonTableTableReferences(
                                db,
                                table,
                                p0,
                              ).pokemonEggGroupTableRefs,
                          currentColumn: 'id',
                          referencedColumn: 'pokemon_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$PokemonTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PokemonTableTable,
      PokemonRow,
      $$PokemonTableTableFilterComposer,
      $$PokemonTableTableOrderingComposer,
      $$PokemonTableTableAnnotationComposer,
      $$PokemonTableTableCreateCompanionBuilder,
      $$PokemonTableTableUpdateCompanionBuilder,
      (PokemonRow, $$PokemonTableTableReferences),
      PokemonRow,
      PrefetchHooks Function({
        bool pokemonTypeTableRefs,
        bool statTableRefs,
        bool pokemonAbilityTableRefs,
        bool pokemonMoveTableRefs,
        bool fromEvolutions,
        bool toEvolutions,
        bool formTableRefs,
        bool pokemonEggGroupTableRefs,
      })
    >;
typedef $$FavoriteTableTableCreateCompanionBuilder =
    FavoriteTableCompanion Function({
      Value<int> pokemonId,
      Value<DateTime> createdAt,
    });
typedef $$FavoriteTableTableUpdateCompanionBuilder =
    FavoriteTableCompanion Function({
      Value<int> pokemonId,
      Value<DateTime> createdAt,
    });

class $$FavoriteTableTableFilterComposer
    extends Composer<_$AppDatabase, $FavoriteTableTable> {
  $$FavoriteTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get pokemonId => $composableBuilder(
    column: $table.pokemonId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$FavoriteTableTableOrderingComposer
    extends Composer<_$AppDatabase, $FavoriteTableTable> {
  $$FavoriteTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get pokemonId => $composableBuilder(
    column: $table.pokemonId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FavoriteTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $FavoriteTableTable> {
  $$FavoriteTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get pokemonId =>
      $composableBuilder(column: $table.pokemonId, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$FavoriteTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FavoriteTableTable,
          FavoriteRow,
          $$FavoriteTableTableFilterComposer,
          $$FavoriteTableTableOrderingComposer,
          $$FavoriteTableTableAnnotationComposer,
          $$FavoriteTableTableCreateCompanionBuilder,
          $$FavoriteTableTableUpdateCompanionBuilder,
          (
            FavoriteRow,
            BaseReferences<_$AppDatabase, $FavoriteTableTable, FavoriteRow>,
          ),
          FavoriteRow,
          PrefetchHooks Function()
        > {
  $$FavoriteTableTableTableManager(_$AppDatabase db, $FavoriteTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FavoriteTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FavoriteTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FavoriteTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> pokemonId = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => FavoriteTableCompanion(
                pokemonId: pokemonId,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> pokemonId = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => FavoriteTableCompanion.insert(
                pokemonId: pokemonId,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$FavoriteTableTable, FavoriteRow>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $FavoriteTableTable,
                    FavoriteRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$FavoriteTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FavoriteTableTable,
      FavoriteRow,
      $$FavoriteTableTableFilterComposer,
      $$FavoriteTableTableOrderingComposer,
      $$FavoriteTableTableAnnotationComposer,
      $$FavoriteTableTableCreateCompanionBuilder,
      $$FavoriteTableTableUpdateCompanionBuilder,
      (
        FavoriteRow,
        BaseReferences<_$AppDatabase, $FavoriteTableTable, FavoriteRow>,
      ),
      FavoriteRow,
      PrefetchHooks Function()
    >;
typedef $$TypeTableTableCreateCompanionBuilder =
    TypeTableCompanion Function({Value<int> id, required String name});
typedef $$TypeTableTableUpdateCompanionBuilder =
    TypeTableCompanion Function({Value<int> id, Value<String> name});

final class $$TypeTableTableReferences
    extends BaseReferences<_$AppDatabase, $TypeTableTable, TypeRow> {
  $$TypeTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PokemonTypeTableTable, List<PokemonTypeRow>>
  _pokemonTypeTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pokemonTypeTable,
    aliasName: 'type_table__id__pokemon_type_table__type_id',
  );

  $$PokemonTypeTableTableProcessedTableManager get pokemonTypeTableRefs {
    final manager = $$PokemonTypeTableTableTableManager(
      $_db,
      $_db.pokemonTypeTable,
    ).filter((f) => f.typeId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _pokemonTypeTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$FormTypeTableTable, List<FormTypeRow>>
  _formTypeTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.formTypeTable,
    aliasName: 'type_table__id__form_type_table__type_id',
  );

  $$FormTypeTableTableProcessedTableManager get formTypeTableRefs {
    final manager = $$FormTypeTableTableTableManager(
      $_db,
      $_db.formTypeTable,
    ).filter((f) => f.typeId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_formTypeTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$TypeMatchupTableTable, List<TypeMatchupRow>>
  _attackingMatchupsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.typeMatchupTable,
    aliasName: 'type_table__id__type_matchup_table__attacking_type_id',
  );

  $$TypeMatchupTableTableProcessedTableManager get attackingMatchups {
    final manager = $$TypeMatchupTableTableTableManager(
      $_db,
      $_db.typeMatchupTable,
    ).filter((f) => f.attackingTypeId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_attackingMatchupsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$TypeMatchupTableTable, List<TypeMatchupRow>>
  _defendingMatchupsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.typeMatchupTable,
    aliasName: 'type_table__id__type_matchup_table__defending_type_id',
  );

  $$TypeMatchupTableTableProcessedTableManager get defendingMatchups {
    final manager = $$TypeMatchupTableTableTableManager(
      $_db,
      $_db.typeMatchupTable,
    ).filter((f) => f.defendingTypeId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_defendingMatchupsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$TypeTableTableFilterComposer
    extends Composer<_$AppDatabase, $TypeTableTable> {
  $$TypeTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> pokemonTypeTableRefs(
    Expression<bool> Function($$PokemonTypeTableTableFilterComposer f) f,
  ) {
    final $$PokemonTypeTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonTypeTable,
      getReferencedColumn: (t) => t.typeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTypeTableTableFilterComposer(
            $db: $db,
            $table: $db.pokemonTypeTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> formTypeTableRefs(
    Expression<bool> Function($$FormTypeTableTableFilterComposer f) f,
  ) {
    final $$FormTypeTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.formTypeTable,
      getReferencedColumn: (t) => t.typeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FormTypeTableTableFilterComposer(
            $db: $db,
            $table: $db.formTypeTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> attackingMatchups(
    Expression<bool> Function($$TypeMatchupTableTableFilterComposer f) f,
  ) {
    final $$TypeMatchupTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.typeMatchupTable,
      getReferencedColumn: (t) => t.attackingTypeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypeMatchupTableTableFilterComposer(
            $db: $db,
            $table: $db.typeMatchupTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> defendingMatchups(
    Expression<bool> Function($$TypeMatchupTableTableFilterComposer f) f,
  ) {
    final $$TypeMatchupTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.typeMatchupTable,
      getReferencedColumn: (t) => t.defendingTypeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypeMatchupTableTableFilterComposer(
            $db: $db,
            $table: $db.typeMatchupTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TypeTableTableOrderingComposer
    extends Composer<_$AppDatabase, $TypeTableTable> {
  $$TypeTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TypeTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $TypeTableTable> {
  $$TypeTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> pokemonTypeTableRefs<T extends Object>(
    Expression<T> Function($$PokemonTypeTableTableAnnotationComposer a) f,
  ) {
    final $$PokemonTypeTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonTypeTable,
      getReferencedColumn: (t) => t.typeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTypeTableTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonTypeTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> formTypeTableRefs<T extends Object>(
    Expression<T> Function($$FormTypeTableTableAnnotationComposer a) f,
  ) {
    final $$FormTypeTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.formTypeTable,
      getReferencedColumn: (t) => t.typeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FormTypeTableTableAnnotationComposer(
            $db: $db,
            $table: $db.formTypeTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> attackingMatchups<T extends Object>(
    Expression<T> Function($$TypeMatchupTableTableAnnotationComposer a) f,
  ) {
    final $$TypeMatchupTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.typeMatchupTable,
      getReferencedColumn: (t) => t.attackingTypeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypeMatchupTableTableAnnotationComposer(
            $db: $db,
            $table: $db.typeMatchupTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> defendingMatchups<T extends Object>(
    Expression<T> Function($$TypeMatchupTableTableAnnotationComposer a) f,
  ) {
    final $$TypeMatchupTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.typeMatchupTable,
      getReferencedColumn: (t) => t.defendingTypeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypeMatchupTableTableAnnotationComposer(
            $db: $db,
            $table: $db.typeMatchupTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TypeTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TypeTableTable,
          TypeRow,
          $$TypeTableTableFilterComposer,
          $$TypeTableTableOrderingComposer,
          $$TypeTableTableAnnotationComposer,
          $$TypeTableTableCreateCompanionBuilder,
          $$TypeTableTableUpdateCompanionBuilder,
          (TypeRow, $$TypeTableTableReferences),
          TypeRow,
          PrefetchHooks Function({
            bool pokemonTypeTableRefs,
            bool formTypeTableRefs,
            bool attackingMatchups,
            bool defendingMatchups,
          })
        > {
  $$TypeTableTableTableManager(_$AppDatabase db, $TypeTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TypeTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TypeTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TypeTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
              }) => TypeTableCompanion(id: id, name: name),
          createCompanionCallback:
              ({Value<int> id = const Value.absent(), required String name}) =>
                  TypeTableCompanion.insert(id: id, name: name),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$TypeTableTable, TypeRow>(table),
                  $$TypeTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                pokemonTypeTableRefs = false,
                formTypeTableRefs = false,
                attackingMatchups = false,
                defendingMatchups = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (pokemonTypeTableRefs) db.pokemonTypeTable,
                    if (formTypeTableRefs) db.formTypeTable,
                    if (attackingMatchups) db.typeMatchupTable,
                    if (defendingMatchups) db.typeMatchupTable,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (pokemonTypeTableRefs)
                        await $_getPrefetchedDataByColumns<
                          TypeRow,
                          $TypeTableTable,
                          PokemonTypeRow,
                          $PokemonTypeTableTable
                        >(
                          currentTable: table,
                          referencedTable: $$TypeTableTableReferences
                              ._pokemonTypeTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TypeTableTableReferences(
                                db,
                                table,
                                p0,
                              ).pokemonTypeTableRefs,
                          currentColumn: 'id',
                          referencedColumn: 'type_id',
                          typedResults: items,
                        ),
                      if (formTypeTableRefs)
                        await $_getPrefetchedDataByColumns<
                          TypeRow,
                          $TypeTableTable,
                          FormTypeRow,
                          $FormTypeTableTable
                        >(
                          currentTable: table,
                          referencedTable: $$TypeTableTableReferences
                              ._formTypeTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TypeTableTableReferences(
                                db,
                                table,
                                p0,
                              ).formTypeTableRefs,
                          currentColumn: 'id',
                          referencedColumn: 'type_id',
                          typedResults: items,
                        ),
                      if (attackingMatchups)
                        await $_getPrefetchedDataByColumns<
                          TypeRow,
                          $TypeTableTable,
                          TypeMatchupRow,
                          $TypeMatchupTableTable
                        >(
                          currentTable: table,
                          referencedTable: $$TypeTableTableReferences
                              ._attackingMatchupsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TypeTableTableReferences(
                                db,
                                table,
                                p0,
                              ).attackingMatchups,
                          currentColumn: 'id',
                          referencedColumn: 'attacking_type_id',
                          typedResults: items,
                        ),
                      if (defendingMatchups)
                        await $_getPrefetchedDataByColumns<
                          TypeRow,
                          $TypeTableTable,
                          TypeMatchupRow,
                          $TypeMatchupTableTable
                        >(
                          currentTable: table,
                          referencedTable: $$TypeTableTableReferences
                              ._defendingMatchupsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TypeTableTableReferences(
                                db,
                                table,
                                p0,
                              ).defendingMatchups,
                          currentColumn: 'id',
                          referencedColumn: 'defending_type_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$TypeTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TypeTableTable,
      TypeRow,
      $$TypeTableTableFilterComposer,
      $$TypeTableTableOrderingComposer,
      $$TypeTableTableAnnotationComposer,
      $$TypeTableTableCreateCompanionBuilder,
      $$TypeTableTableUpdateCompanionBuilder,
      (TypeRow, $$TypeTableTableReferences),
      TypeRow,
      PrefetchHooks Function({
        bool pokemonTypeTableRefs,
        bool formTypeTableRefs,
        bool attackingMatchups,
        bool defendingMatchups,
      })
    >;
typedef $$PokemonTypeTableTableCreateCompanionBuilder =
    PokemonTypeTableCompanion Function({
      required int pokemonId,
      required int typeId,
      required int slot,
      Value<int> rowid,
    });
typedef $$PokemonTypeTableTableUpdateCompanionBuilder =
    PokemonTypeTableCompanion Function({
      Value<int> pokemonId,
      Value<int> typeId,
      Value<int> slot,
      Value<int> rowid,
    });

final class $$PokemonTypeTableTableReferences
    extends
        BaseReferences<_$AppDatabase, $PokemonTypeTableTable, PokemonTypeRow> {
  $$PokemonTypeTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $PokemonTableTable _pokemonIdTable(_$AppDatabase db) => db.pokemonTable
      .createAlias('pokemon_type_table__pokemon_id__pokemon_table__id');

  $$PokemonTableTableProcessedTableManager get pokemonId {
    final $_column = $_itemColumn<int>('pokemon_id')!;

    final manager = $$PokemonTableTableTableManager(
      $_db,
      $_db.pokemonTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_pokemonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $TypeTableTable _typeIdTable(_$AppDatabase db) =>
      db.typeTable.createAlias('pokemon_type_table__type_id__type_table__id');

  $$TypeTableTableProcessedTableManager get typeId {
    final $_column = $_itemColumn<int>('type_id')!;

    final manager = $$TypeTableTableTableManager(
      $_db,
      $_db.typeTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_typeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PokemonTypeTableTableFilterComposer
    extends Composer<_$AppDatabase, $PokemonTypeTableTable> {
  $$PokemonTypeTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get slot => $composableBuilder(
    column: $table.slot,
    builder: (column) => ColumnFilters(column),
  );

  $$PokemonTableTableFilterComposer get pokemonId {
    final $$PokemonTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableFilterComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TypeTableTableFilterComposer get typeId {
    final $$TypeTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.typeId,
      referencedTable: $db.typeTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypeTableTableFilterComposer(
            $db: $db,
            $table: $db.typeTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonTypeTableTableOrderingComposer
    extends Composer<_$AppDatabase, $PokemonTypeTableTable> {
  $$PokemonTypeTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get slot => $composableBuilder(
    column: $table.slot,
    builder: (column) => ColumnOrderings(column),
  );

  $$PokemonTableTableOrderingComposer get pokemonId {
    final $$PokemonTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableOrderingComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TypeTableTableOrderingComposer get typeId {
    final $$TypeTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.typeId,
      referencedTable: $db.typeTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypeTableTableOrderingComposer(
            $db: $db,
            $table: $db.typeTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonTypeTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $PokemonTypeTableTable> {
  $$PokemonTypeTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get slot =>
      $composableBuilder(column: $table.slot, builder: (column) => column);

  $$PokemonTableTableAnnotationComposer get pokemonId {
    final $$PokemonTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TypeTableTableAnnotationComposer get typeId {
    final $$TypeTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.typeId,
      referencedTable: $db.typeTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypeTableTableAnnotationComposer(
            $db: $db,
            $table: $db.typeTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonTypeTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PokemonTypeTableTable,
          PokemonTypeRow,
          $$PokemonTypeTableTableFilterComposer,
          $$PokemonTypeTableTableOrderingComposer,
          $$PokemonTypeTableTableAnnotationComposer,
          $$PokemonTypeTableTableCreateCompanionBuilder,
          $$PokemonTypeTableTableUpdateCompanionBuilder,
          (PokemonTypeRow, $$PokemonTypeTableTableReferences),
          PokemonTypeRow,
          PrefetchHooks Function({bool pokemonId, bool typeId})
        > {
  $$PokemonTypeTableTableTableManager(
    _$AppDatabase db,
    $PokemonTypeTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PokemonTypeTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PokemonTypeTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PokemonTypeTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> pokemonId = const Value.absent(),
                Value<int> typeId = const Value.absent(),
                Value<int> slot = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PokemonTypeTableCompanion(
                pokemonId: pokemonId,
                typeId: typeId,
                slot: slot,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int pokemonId,
                required int typeId,
                required int slot,
                Value<int> rowid = const Value.absent(),
              }) => PokemonTypeTableCompanion.insert(
                pokemonId: pokemonId,
                typeId: typeId,
                slot: slot,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PokemonTypeTableTable, PokemonTypeRow>(table),
                  $$PokemonTypeTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonId = false, typeId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (pokemonId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.pokemonId,
                                referencedTable:
                                    $$PokemonTypeTableTableReferences
                                        ._pokemonIdTable(db),
                                referencedColumn:
                                    $$PokemonTypeTableTableReferences
                                        ._pokemonIdTable(db)
                                        .id,
                              )
                              as T;
                    }
                    if (typeId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.typeId,
                                referencedTable:
                                    $$PokemonTypeTableTableReferences
                                        ._typeIdTable(db),
                                referencedColumn:
                                    $$PokemonTypeTableTableReferences
                                        ._typeIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PokemonTypeTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PokemonTypeTableTable,
      PokemonTypeRow,
      $$PokemonTypeTableTableFilterComposer,
      $$PokemonTypeTableTableOrderingComposer,
      $$PokemonTypeTableTableAnnotationComposer,
      $$PokemonTypeTableTableCreateCompanionBuilder,
      $$PokemonTypeTableTableUpdateCompanionBuilder,
      (PokemonTypeRow, $$PokemonTypeTableTableReferences),
      PokemonTypeRow,
      PrefetchHooks Function({bool pokemonId, bool typeId})
    >;
typedef $$StatTableTableCreateCompanionBuilder =
    StatTableCompanion Function({
      required int pokemonId,
      required String statName,
      required int baseValue,
      Value<int> rowid,
    });
typedef $$StatTableTableUpdateCompanionBuilder =
    StatTableCompanion Function({
      Value<int> pokemonId,
      Value<String> statName,
      Value<int> baseValue,
      Value<int> rowid,
    });

final class $$StatTableTableReferences
    extends BaseReferences<_$AppDatabase, $StatTableTable, StatRow> {
  $$StatTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PokemonTableTable _pokemonIdTable(_$AppDatabase db) =>
      db.pokemonTable.createAlias('stat_table__pokemon_id__pokemon_table__id');

  $$PokemonTableTableProcessedTableManager get pokemonId {
    final $_column = $_itemColumn<int>('pokemon_id')!;

    final manager = $$PokemonTableTableTableManager(
      $_db,
      $_db.pokemonTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_pokemonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$StatTableTableFilterComposer
    extends Composer<_$AppDatabase, $StatTableTable> {
  $$StatTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get statName => $composableBuilder(
    column: $table.statName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get baseValue => $composableBuilder(
    column: $table.baseValue,
    builder: (column) => ColumnFilters(column),
  );

  $$PokemonTableTableFilterComposer get pokemonId {
    final $$PokemonTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableFilterComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$StatTableTableOrderingComposer
    extends Composer<_$AppDatabase, $StatTableTable> {
  $$StatTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get statName => $composableBuilder(
    column: $table.statName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get baseValue => $composableBuilder(
    column: $table.baseValue,
    builder: (column) => ColumnOrderings(column),
  );

  $$PokemonTableTableOrderingComposer get pokemonId {
    final $$PokemonTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableOrderingComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$StatTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $StatTableTable> {
  $$StatTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get statName =>
      $composableBuilder(column: $table.statName, builder: (column) => column);

  GeneratedColumn<int> get baseValue =>
      $composableBuilder(column: $table.baseValue, builder: (column) => column);

  $$PokemonTableTableAnnotationComposer get pokemonId {
    final $$PokemonTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$StatTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $StatTableTable,
          StatRow,
          $$StatTableTableFilterComposer,
          $$StatTableTableOrderingComposer,
          $$StatTableTableAnnotationComposer,
          $$StatTableTableCreateCompanionBuilder,
          $$StatTableTableUpdateCompanionBuilder,
          (StatRow, $$StatTableTableReferences),
          StatRow,
          PrefetchHooks Function({bool pokemonId})
        > {
  $$StatTableTableTableManager(_$AppDatabase db, $StatTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StatTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StatTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StatTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> pokemonId = const Value.absent(),
                Value<String> statName = const Value.absent(),
                Value<int> baseValue = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => StatTableCompanion(
                pokemonId: pokemonId,
                statName: statName,
                baseValue: baseValue,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int pokemonId,
                required String statName,
                required int baseValue,
                Value<int> rowid = const Value.absent(),
              }) => StatTableCompanion.insert(
                pokemonId: pokemonId,
                statName: statName,
                baseValue: baseValue,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$StatTableTable, StatRow>(table),
                  $$StatTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (pokemonId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.pokemonId,
                                referencedTable: $$StatTableTableReferences
                                    ._pokemonIdTable(db),
                                referencedColumn: $$StatTableTableReferences
                                    ._pokemonIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$StatTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $StatTableTable,
      StatRow,
      $$StatTableTableFilterComposer,
      $$StatTableTableOrderingComposer,
      $$StatTableTableAnnotationComposer,
      $$StatTableTableCreateCompanionBuilder,
      $$StatTableTableUpdateCompanionBuilder,
      (StatRow, $$StatTableTableReferences),
      StatRow,
      PrefetchHooks Function({bool pokemonId})
    >;
typedef $$AbilityTableTableCreateCompanionBuilder =
    AbilityTableCompanion Function({
      Value<int> id,
      required String name,
      Value<String?> effectSummary,
    });
typedef $$AbilityTableTableUpdateCompanionBuilder =
    AbilityTableCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String?> effectSummary,
    });

final class $$AbilityTableTableReferences
    extends BaseReferences<_$AppDatabase, $AbilityTableTable, AbilityRow> {
  $$AbilityTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PokemonAbilityTableTable, List<PokemonAbilityRow>>
  _pokemonAbilityTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.pokemonAbilityTable,
        aliasName: 'ability_table__id__pokemon_ability_table__ability_id',
      );

  $$PokemonAbilityTableTableProcessedTableManager get pokemonAbilityTableRefs {
    final manager = $$PokemonAbilityTableTableTableManager(
      $_db,
      $_db.pokemonAbilityTable,
    ).filter((f) => f.abilityId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _pokemonAbilityTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$AbilityTableTableFilterComposer
    extends Composer<_$AppDatabase, $AbilityTableTable> {
  $$AbilityTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get effectSummary => $composableBuilder(
    column: $table.effectSummary,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> pokemonAbilityTableRefs(
    Expression<bool> Function($$PokemonAbilityTableTableFilterComposer f) f,
  ) {
    final $$PokemonAbilityTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonAbilityTable,
      getReferencedColumn: (t) => t.abilityId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonAbilityTableTableFilterComposer(
            $db: $db,
            $table: $db.pokemonAbilityTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$AbilityTableTableOrderingComposer
    extends Composer<_$AppDatabase, $AbilityTableTable> {
  $$AbilityTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get effectSummary => $composableBuilder(
    column: $table.effectSummary,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AbilityTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $AbilityTableTable> {
  $$AbilityTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get effectSummary => $composableBuilder(
    column: $table.effectSummary,
    builder: (column) => column,
  );

  Expression<T> pokemonAbilityTableRefs<T extends Object>(
    Expression<T> Function($$PokemonAbilityTableTableAnnotationComposer a) f,
  ) {
    final $$PokemonAbilityTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.pokemonAbilityTable,
          getReferencedColumn: (t) => t.abilityId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$PokemonAbilityTableTableAnnotationComposer(
                $db: $db,
                $table: $db.pokemonAbilityTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$AbilityTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AbilityTableTable,
          AbilityRow,
          $$AbilityTableTableFilterComposer,
          $$AbilityTableTableOrderingComposer,
          $$AbilityTableTableAnnotationComposer,
          $$AbilityTableTableCreateCompanionBuilder,
          $$AbilityTableTableUpdateCompanionBuilder,
          (AbilityRow, $$AbilityTableTableReferences),
          AbilityRow,
          PrefetchHooks Function({bool pokemonAbilityTableRefs})
        > {
  $$AbilityTableTableTableManager(_$AppDatabase db, $AbilityTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AbilityTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AbilityTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AbilityTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> effectSummary = const Value.absent(),
              }) => AbilityTableCompanion(
                id: id,
                name: name,
                effectSummary: effectSummary,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                Value<String?> effectSummary = const Value.absent(),
              }) => AbilityTableCompanion.insert(
                id: id,
                name: name,
                effectSummary: effectSummary,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$AbilityTableTable, AbilityRow>(table),
                  $$AbilityTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonAbilityTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (pokemonAbilityTableRefs) db.pokemonAbilityTable,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (pokemonAbilityTableRefs)
                    await $_getPrefetchedDataByColumns<
                      AbilityRow,
                      $AbilityTableTable,
                      PokemonAbilityRow,
                      $PokemonAbilityTableTable
                    >(
                      currentTable: table,
                      referencedTable: $$AbilityTableTableReferences
                          ._pokemonAbilityTableRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$AbilityTableTableReferences(
                            db,
                            table,
                            p0,
                          ).pokemonAbilityTableRefs,
                      currentColumn: 'id',
                      referencedColumn: 'ability_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$AbilityTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AbilityTableTable,
      AbilityRow,
      $$AbilityTableTableFilterComposer,
      $$AbilityTableTableOrderingComposer,
      $$AbilityTableTableAnnotationComposer,
      $$AbilityTableTableCreateCompanionBuilder,
      $$AbilityTableTableUpdateCompanionBuilder,
      (AbilityRow, $$AbilityTableTableReferences),
      AbilityRow,
      PrefetchHooks Function({bool pokemonAbilityTableRefs})
    >;
typedef $$PokemonAbilityTableTableCreateCompanionBuilder =
    PokemonAbilityTableCompanion Function({
      required int pokemonId,
      required int abilityId,
      required int slot,
      Value<bool> isHidden,
      Value<int> rowid,
    });
typedef $$PokemonAbilityTableTableUpdateCompanionBuilder =
    PokemonAbilityTableCompanion Function({
      Value<int> pokemonId,
      Value<int> abilityId,
      Value<int> slot,
      Value<bool> isHidden,
      Value<int> rowid,
    });

final class $$PokemonAbilityTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $PokemonAbilityTableTable,
          PokemonAbilityRow
        > {
  $$PokemonAbilityTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $PokemonTableTable _pokemonIdTable(_$AppDatabase db) => db.pokemonTable
      .createAlias('pokemon_ability_table__pokemon_id__pokemon_table__id');

  $$PokemonTableTableProcessedTableManager get pokemonId {
    final $_column = $_itemColumn<int>('pokemon_id')!;

    final manager = $$PokemonTableTableTableManager(
      $_db,
      $_db.pokemonTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_pokemonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $AbilityTableTable _abilityIdTable(_$AppDatabase db) => db.abilityTable
      .createAlias('pokemon_ability_table__ability_id__ability_table__id');

  $$AbilityTableTableProcessedTableManager get abilityId {
    final $_column = $_itemColumn<int>('ability_id')!;

    final manager = $$AbilityTableTableTableManager(
      $_db,
      $_db.abilityTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_abilityIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PokemonAbilityTableTableFilterComposer
    extends Composer<_$AppDatabase, $PokemonAbilityTableTable> {
  $$PokemonAbilityTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get slot => $composableBuilder(
    column: $table.slot,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isHidden => $composableBuilder(
    column: $table.isHidden,
    builder: (column) => ColumnFilters(column),
  );

  $$PokemonTableTableFilterComposer get pokemonId {
    final $$PokemonTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableFilterComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AbilityTableTableFilterComposer get abilityId {
    final $$AbilityTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.abilityId,
      referencedTable: $db.abilityTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AbilityTableTableFilterComposer(
            $db: $db,
            $table: $db.abilityTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonAbilityTableTableOrderingComposer
    extends Composer<_$AppDatabase, $PokemonAbilityTableTable> {
  $$PokemonAbilityTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get slot => $composableBuilder(
    column: $table.slot,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isHidden => $composableBuilder(
    column: $table.isHidden,
    builder: (column) => ColumnOrderings(column),
  );

  $$PokemonTableTableOrderingComposer get pokemonId {
    final $$PokemonTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableOrderingComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AbilityTableTableOrderingComposer get abilityId {
    final $$AbilityTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.abilityId,
      referencedTable: $db.abilityTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AbilityTableTableOrderingComposer(
            $db: $db,
            $table: $db.abilityTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonAbilityTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $PokemonAbilityTableTable> {
  $$PokemonAbilityTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get slot =>
      $composableBuilder(column: $table.slot, builder: (column) => column);

  GeneratedColumn<bool> get isHidden =>
      $composableBuilder(column: $table.isHidden, builder: (column) => column);

  $$PokemonTableTableAnnotationComposer get pokemonId {
    final $$PokemonTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AbilityTableTableAnnotationComposer get abilityId {
    final $$AbilityTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.abilityId,
      referencedTable: $db.abilityTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AbilityTableTableAnnotationComposer(
            $db: $db,
            $table: $db.abilityTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonAbilityTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PokemonAbilityTableTable,
          PokemonAbilityRow,
          $$PokemonAbilityTableTableFilterComposer,
          $$PokemonAbilityTableTableOrderingComposer,
          $$PokemonAbilityTableTableAnnotationComposer,
          $$PokemonAbilityTableTableCreateCompanionBuilder,
          $$PokemonAbilityTableTableUpdateCompanionBuilder,
          (PokemonAbilityRow, $$PokemonAbilityTableTableReferences),
          PokemonAbilityRow,
          PrefetchHooks Function({bool pokemonId, bool abilityId})
        > {
  $$PokemonAbilityTableTableTableManager(
    _$AppDatabase db,
    $PokemonAbilityTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PokemonAbilityTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PokemonAbilityTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$PokemonAbilityTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> pokemonId = const Value.absent(),
                Value<int> abilityId = const Value.absent(),
                Value<int> slot = const Value.absent(),
                Value<bool> isHidden = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PokemonAbilityTableCompanion(
                pokemonId: pokemonId,
                abilityId: abilityId,
                slot: slot,
                isHidden: isHidden,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int pokemonId,
                required int abilityId,
                required int slot,
                Value<bool> isHidden = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PokemonAbilityTableCompanion.insert(
                pokemonId: pokemonId,
                abilityId: abilityId,
                slot: slot,
                isHidden: isHidden,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PokemonAbilityTableTable, PokemonAbilityRow>(
                    table,
                  ),
                  $$PokemonAbilityTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonId = false, abilityId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (pokemonId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.pokemonId,
                                referencedTable:
                                    $$PokemonAbilityTableTableReferences
                                        ._pokemonIdTable(db),
                                referencedColumn:
                                    $$PokemonAbilityTableTableReferences
                                        ._pokemonIdTable(db)
                                        .id,
                              )
                              as T;
                    }
                    if (abilityId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.abilityId,
                                referencedTable:
                                    $$PokemonAbilityTableTableReferences
                                        ._abilityIdTable(db),
                                referencedColumn:
                                    $$PokemonAbilityTableTableReferences
                                        ._abilityIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PokemonAbilityTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PokemonAbilityTableTable,
      PokemonAbilityRow,
      $$PokemonAbilityTableTableFilterComposer,
      $$PokemonAbilityTableTableOrderingComposer,
      $$PokemonAbilityTableTableAnnotationComposer,
      $$PokemonAbilityTableTableCreateCompanionBuilder,
      $$PokemonAbilityTableTableUpdateCompanionBuilder,
      (PokemonAbilityRow, $$PokemonAbilityTableTableReferences),
      PokemonAbilityRow,
      PrefetchHooks Function({bool pokemonId, bool abilityId})
    >;
typedef $$MoveTableTableCreateCompanionBuilder =
    MoveTableCompanion Function({Value<int> id, required String name});
typedef $$MoveTableTableUpdateCompanionBuilder =
    MoveTableCompanion Function({Value<int> id, Value<String> name});

final class $$MoveTableTableReferences
    extends BaseReferences<_$AppDatabase, $MoveTableTable, MoveRow> {
  $$MoveTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PokemonMoveTableTable, List<PokemonMoveRow>>
  _pokemonMoveTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pokemonMoveTable,
    aliasName: 'move_table__id__pokemon_move_table__move_id',
  );

  $$PokemonMoveTableTableProcessedTableManager get pokemonMoveTableRefs {
    final manager = $$PokemonMoveTableTableTableManager(
      $_db,
      $_db.pokemonMoveTable,
    ).filter((f) => f.moveId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _pokemonMoveTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$MoveTableTableFilterComposer
    extends Composer<_$AppDatabase, $MoveTableTable> {
  $$MoveTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> pokemonMoveTableRefs(
    Expression<bool> Function($$PokemonMoveTableTableFilterComposer f) f,
  ) {
    final $$PokemonMoveTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonMoveTable,
      getReferencedColumn: (t) => t.moveId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonMoveTableTableFilterComposer(
            $db: $db,
            $table: $db.pokemonMoveTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$MoveTableTableOrderingComposer
    extends Composer<_$AppDatabase, $MoveTableTable> {
  $$MoveTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MoveTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $MoveTableTable> {
  $$MoveTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> pokemonMoveTableRefs<T extends Object>(
    Expression<T> Function($$PokemonMoveTableTableAnnotationComposer a) f,
  ) {
    final $$PokemonMoveTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonMoveTable,
      getReferencedColumn: (t) => t.moveId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonMoveTableTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonMoveTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$MoveTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MoveTableTable,
          MoveRow,
          $$MoveTableTableFilterComposer,
          $$MoveTableTableOrderingComposer,
          $$MoveTableTableAnnotationComposer,
          $$MoveTableTableCreateCompanionBuilder,
          $$MoveTableTableUpdateCompanionBuilder,
          (MoveRow, $$MoveTableTableReferences),
          MoveRow,
          PrefetchHooks Function({bool pokemonMoveTableRefs})
        > {
  $$MoveTableTableTableManager(_$AppDatabase db, $MoveTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MoveTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MoveTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MoveTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
              }) => MoveTableCompanion(id: id, name: name),
          createCompanionCallback:
              ({Value<int> id = const Value.absent(), required String name}) =>
                  MoveTableCompanion.insert(id: id, name: name),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$MoveTableTable, MoveRow>(table),
                  $$MoveTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonMoveTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (pokemonMoveTableRefs) db.pokemonMoveTable,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (pokemonMoveTableRefs)
                    await $_getPrefetchedDataByColumns<
                      MoveRow,
                      $MoveTableTable,
                      PokemonMoveRow,
                      $PokemonMoveTableTable
                    >(
                      currentTable: table,
                      referencedTable: $$MoveTableTableReferences
                          ._pokemonMoveTableRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$MoveTableTableReferences(
                            db,
                            table,
                            p0,
                          ).pokemonMoveTableRefs,
                      currentColumn: 'id',
                      referencedColumn: 'move_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$MoveTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MoveTableTable,
      MoveRow,
      $$MoveTableTableFilterComposer,
      $$MoveTableTableOrderingComposer,
      $$MoveTableTableAnnotationComposer,
      $$MoveTableTableCreateCompanionBuilder,
      $$MoveTableTableUpdateCompanionBuilder,
      (MoveRow, $$MoveTableTableReferences),
      MoveRow,
      PrefetchHooks Function({bool pokemonMoveTableRefs})
    >;
typedef $$PokemonMoveTableTableCreateCompanionBuilder =
    PokemonMoveTableCompanion Function({
      required int pokemonId,
      required int moveId,
      required String versionGroup,
      required String learnMethod,
      Value<int?> levelLearned,
      Value<int> rowid,
    });
typedef $$PokemonMoveTableTableUpdateCompanionBuilder =
    PokemonMoveTableCompanion Function({
      Value<int> pokemonId,
      Value<int> moveId,
      Value<String> versionGroup,
      Value<String> learnMethod,
      Value<int?> levelLearned,
      Value<int> rowid,
    });

final class $$PokemonMoveTableTableReferences
    extends
        BaseReferences<_$AppDatabase, $PokemonMoveTableTable, PokemonMoveRow> {
  $$PokemonMoveTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $PokemonTableTable _pokemonIdTable(_$AppDatabase db) => db.pokemonTable
      .createAlias('pokemon_move_table__pokemon_id__pokemon_table__id');

  $$PokemonTableTableProcessedTableManager get pokemonId {
    final $_column = $_itemColumn<int>('pokemon_id')!;

    final manager = $$PokemonTableTableTableManager(
      $_db,
      $_db.pokemonTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_pokemonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $MoveTableTable _moveIdTable(_$AppDatabase db) =>
      db.moveTable.createAlias('pokemon_move_table__move_id__move_table__id');

  $$MoveTableTableProcessedTableManager get moveId {
    final $_column = $_itemColumn<int>('move_id')!;

    final manager = $$MoveTableTableTableManager(
      $_db,
      $_db.moveTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_moveIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PokemonMoveTableTableFilterComposer
    extends Composer<_$AppDatabase, $PokemonMoveTableTable> {
  $$PokemonMoveTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get versionGroup => $composableBuilder(
    column: $table.versionGroup,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get learnMethod => $composableBuilder(
    column: $table.learnMethod,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get levelLearned => $composableBuilder(
    column: $table.levelLearned,
    builder: (column) => ColumnFilters(column),
  );

  $$PokemonTableTableFilterComposer get pokemonId {
    final $$PokemonTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableFilterComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$MoveTableTableFilterComposer get moveId {
    final $$MoveTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.moveId,
      referencedTable: $db.moveTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MoveTableTableFilterComposer(
            $db: $db,
            $table: $db.moveTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonMoveTableTableOrderingComposer
    extends Composer<_$AppDatabase, $PokemonMoveTableTable> {
  $$PokemonMoveTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get versionGroup => $composableBuilder(
    column: $table.versionGroup,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get learnMethod => $composableBuilder(
    column: $table.learnMethod,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get levelLearned => $composableBuilder(
    column: $table.levelLearned,
    builder: (column) => ColumnOrderings(column),
  );

  $$PokemonTableTableOrderingComposer get pokemonId {
    final $$PokemonTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableOrderingComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$MoveTableTableOrderingComposer get moveId {
    final $$MoveTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.moveId,
      referencedTable: $db.moveTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MoveTableTableOrderingComposer(
            $db: $db,
            $table: $db.moveTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonMoveTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $PokemonMoveTableTable> {
  $$PokemonMoveTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get versionGroup => $composableBuilder(
    column: $table.versionGroup,
    builder: (column) => column,
  );

  GeneratedColumn<String> get learnMethod => $composableBuilder(
    column: $table.learnMethod,
    builder: (column) => column,
  );

  GeneratedColumn<int> get levelLearned => $composableBuilder(
    column: $table.levelLearned,
    builder: (column) => column,
  );

  $$PokemonTableTableAnnotationComposer get pokemonId {
    final $$PokemonTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$MoveTableTableAnnotationComposer get moveId {
    final $$MoveTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.moveId,
      referencedTable: $db.moveTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MoveTableTableAnnotationComposer(
            $db: $db,
            $table: $db.moveTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonMoveTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PokemonMoveTableTable,
          PokemonMoveRow,
          $$PokemonMoveTableTableFilterComposer,
          $$PokemonMoveTableTableOrderingComposer,
          $$PokemonMoveTableTableAnnotationComposer,
          $$PokemonMoveTableTableCreateCompanionBuilder,
          $$PokemonMoveTableTableUpdateCompanionBuilder,
          (PokemonMoveRow, $$PokemonMoveTableTableReferences),
          PokemonMoveRow,
          PrefetchHooks Function({bool pokemonId, bool moveId})
        > {
  $$PokemonMoveTableTableTableManager(
    _$AppDatabase db,
    $PokemonMoveTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PokemonMoveTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PokemonMoveTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PokemonMoveTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> pokemonId = const Value.absent(),
                Value<int> moveId = const Value.absent(),
                Value<String> versionGroup = const Value.absent(),
                Value<String> learnMethod = const Value.absent(),
                Value<int?> levelLearned = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PokemonMoveTableCompanion(
                pokemonId: pokemonId,
                moveId: moveId,
                versionGroup: versionGroup,
                learnMethod: learnMethod,
                levelLearned: levelLearned,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int pokemonId,
                required int moveId,
                required String versionGroup,
                required String learnMethod,
                Value<int?> levelLearned = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PokemonMoveTableCompanion.insert(
                pokemonId: pokemonId,
                moveId: moveId,
                versionGroup: versionGroup,
                learnMethod: learnMethod,
                levelLearned: levelLearned,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PokemonMoveTableTable, PokemonMoveRow>(table),
                  $$PokemonMoveTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonId = false, moveId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (pokemonId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.pokemonId,
                                referencedTable:
                                    $$PokemonMoveTableTableReferences
                                        ._pokemonIdTable(db),
                                referencedColumn:
                                    $$PokemonMoveTableTableReferences
                                        ._pokemonIdTable(db)
                                        .id,
                              )
                              as T;
                    }
                    if (moveId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.moveId,
                                referencedTable:
                                    $$PokemonMoveTableTableReferences
                                        ._moveIdTable(db),
                                referencedColumn:
                                    $$PokemonMoveTableTableReferences
                                        ._moveIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PokemonMoveTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PokemonMoveTableTable,
      PokemonMoveRow,
      $$PokemonMoveTableTableFilterComposer,
      $$PokemonMoveTableTableOrderingComposer,
      $$PokemonMoveTableTableAnnotationComposer,
      $$PokemonMoveTableTableCreateCompanionBuilder,
      $$PokemonMoveTableTableUpdateCompanionBuilder,
      (PokemonMoveRow, $$PokemonMoveTableTableReferences),
      PokemonMoveRow,
      PrefetchHooks Function({bool pokemonId, bool moveId})
    >;
typedef $$EvolutionTableTableCreateCompanionBuilder =
    EvolutionTableCompanion Function({
      required int fromPokemonId,
      required int toPokemonId,
      required String trigger,
      Value<int?> minLevel,
      Value<int> rowid,
    });
typedef $$EvolutionTableTableUpdateCompanionBuilder =
    EvolutionTableCompanion Function({
      Value<int> fromPokemonId,
      Value<int> toPokemonId,
      Value<String> trigger,
      Value<int?> minLevel,
      Value<int> rowid,
    });

final class $$EvolutionTableTableReferences
    extends BaseReferences<_$AppDatabase, $EvolutionTableTable, EvolutionRow> {
  $$EvolutionTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $PokemonTableTable _fromPokemonIdTable(_$AppDatabase db) => db
      .pokemonTable
      .createAlias('evolution_table__from_pokemon_id__pokemon_table__id');

  $$PokemonTableTableProcessedTableManager get fromPokemonId {
    final $_column = $_itemColumn<int>('from_pokemon_id')!;

    final manager = $$PokemonTableTableTableManager(
      $_db,
      $_db.pokemonTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_fromPokemonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $PokemonTableTable _toPokemonIdTable(_$AppDatabase db) => db
      .pokemonTable
      .createAlias('evolution_table__to_pokemon_id__pokemon_table__id');

  $$PokemonTableTableProcessedTableManager get toPokemonId {
    final $_column = $_itemColumn<int>('to_pokemon_id')!;

    final manager = $$PokemonTableTableTableManager(
      $_db,
      $_db.pokemonTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_toPokemonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$EvolutionTableTableFilterComposer
    extends Composer<_$AppDatabase, $EvolutionTableTable> {
  $$EvolutionTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get trigger => $composableBuilder(
    column: $table.trigger,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minLevel => $composableBuilder(
    column: $table.minLevel,
    builder: (column) => ColumnFilters(column),
  );

  $$PokemonTableTableFilterComposer get fromPokemonId {
    final $$PokemonTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.fromPokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableFilterComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$PokemonTableTableFilterComposer get toPokemonId {
    final $$PokemonTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.toPokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableFilterComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EvolutionTableTableOrderingComposer
    extends Composer<_$AppDatabase, $EvolutionTableTable> {
  $$EvolutionTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get trigger => $composableBuilder(
    column: $table.trigger,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minLevel => $composableBuilder(
    column: $table.minLevel,
    builder: (column) => ColumnOrderings(column),
  );

  $$PokemonTableTableOrderingComposer get fromPokemonId {
    final $$PokemonTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.fromPokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableOrderingComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$PokemonTableTableOrderingComposer get toPokemonId {
    final $$PokemonTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.toPokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableOrderingComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EvolutionTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $EvolutionTableTable> {
  $$EvolutionTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get trigger =>
      $composableBuilder(column: $table.trigger, builder: (column) => column);

  GeneratedColumn<int> get minLevel =>
      $composableBuilder(column: $table.minLevel, builder: (column) => column);

  $$PokemonTableTableAnnotationComposer get fromPokemonId {
    final $$PokemonTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.fromPokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$PokemonTableTableAnnotationComposer get toPokemonId {
    final $$PokemonTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.toPokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EvolutionTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EvolutionTableTable,
          EvolutionRow,
          $$EvolutionTableTableFilterComposer,
          $$EvolutionTableTableOrderingComposer,
          $$EvolutionTableTableAnnotationComposer,
          $$EvolutionTableTableCreateCompanionBuilder,
          $$EvolutionTableTableUpdateCompanionBuilder,
          (EvolutionRow, $$EvolutionTableTableReferences),
          EvolutionRow,
          PrefetchHooks Function({bool fromPokemonId, bool toPokemonId})
        > {
  $$EvolutionTableTableTableManager(
    _$AppDatabase db,
    $EvolutionTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EvolutionTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EvolutionTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EvolutionTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> fromPokemonId = const Value.absent(),
                Value<int> toPokemonId = const Value.absent(),
                Value<String> trigger = const Value.absent(),
                Value<int?> minLevel = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EvolutionTableCompanion(
                fromPokemonId: fromPokemonId,
                toPokemonId: toPokemonId,
                trigger: trigger,
                minLevel: minLevel,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int fromPokemonId,
                required int toPokemonId,
                required String trigger,
                Value<int?> minLevel = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EvolutionTableCompanion.insert(
                fromPokemonId: fromPokemonId,
                toPokemonId: toPokemonId,
                trigger: trigger,
                minLevel: minLevel,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$EvolutionTableTable, EvolutionRow>(table),
                  $$EvolutionTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({fromPokemonId = false, toPokemonId = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (fromPokemonId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.fromPokemonId,
                                    referencedTable:
                                        $$EvolutionTableTableReferences
                                            ._fromPokemonIdTable(db),
                                    referencedColumn:
                                        $$EvolutionTableTableReferences
                                            ._fromPokemonIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }
                        if (toPokemonId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.toPokemonId,
                                    referencedTable:
                                        $$EvolutionTableTableReferences
                                            ._toPokemonIdTable(db),
                                    referencedColumn:
                                        $$EvolutionTableTableReferences
                                            ._toPokemonIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [];
                  },
                );
              },
        ),
      );
}

typedef $$EvolutionTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EvolutionTableTable,
      EvolutionRow,
      $$EvolutionTableTableFilterComposer,
      $$EvolutionTableTableOrderingComposer,
      $$EvolutionTableTableAnnotationComposer,
      $$EvolutionTableTableCreateCompanionBuilder,
      $$EvolutionTableTableUpdateCompanionBuilder,
      (EvolutionRow, $$EvolutionTableTableReferences),
      EvolutionRow,
      PrefetchHooks Function({bool fromPokemonId, bool toPokemonId})
    >;
typedef $$FormTableTableCreateCompanionBuilder =
    FormTableCompanion Function({
      Value<int> id,
      required int pokemonId,
      required String name,
      Value<String?> imageUrl,
      Value<bool> isDefault,
    });
typedef $$FormTableTableUpdateCompanionBuilder =
    FormTableCompanion Function({
      Value<int> id,
      Value<int> pokemonId,
      Value<String> name,
      Value<String?> imageUrl,
      Value<bool> isDefault,
    });

final class $$FormTableTableReferences
    extends BaseReferences<_$AppDatabase, $FormTableTable, FormRow> {
  $$FormTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PokemonTableTable _pokemonIdTable(_$AppDatabase db) =>
      db.pokemonTable.createAlias('form_table__pokemon_id__pokemon_table__id');

  $$PokemonTableTableProcessedTableManager get pokemonId {
    final $_column = $_itemColumn<int>('pokemon_id')!;

    final manager = $$PokemonTableTableTableManager(
      $_db,
      $_db.pokemonTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_pokemonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$FormTypeTableTable, List<FormTypeRow>>
  _formTypeTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.formTypeTable,
    aliasName: 'form_table__id__form_type_table__form_id',
  );

  $$FormTypeTableTableProcessedTableManager get formTypeTableRefs {
    final manager = $$FormTypeTableTableTableManager(
      $_db,
      $_db.formTypeTable,
    ).filter((f) => f.formId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_formTypeTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$FormTableTableFilterComposer
    extends Composer<_$AppDatabase, $FormTableTable> {
  $$FormTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isDefault => $composableBuilder(
    column: $table.isDefault,
    builder: (column) => ColumnFilters(column),
  );

  $$PokemonTableTableFilterComposer get pokemonId {
    final $$PokemonTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableFilterComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> formTypeTableRefs(
    Expression<bool> Function($$FormTypeTableTableFilterComposer f) f,
  ) {
    final $$FormTypeTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.formTypeTable,
      getReferencedColumn: (t) => t.formId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FormTypeTableTableFilterComposer(
            $db: $db,
            $table: $db.formTypeTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$FormTableTableOrderingComposer
    extends Composer<_$AppDatabase, $FormTableTable> {
  $$FormTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isDefault => $composableBuilder(
    column: $table.isDefault,
    builder: (column) => ColumnOrderings(column),
  );

  $$PokemonTableTableOrderingComposer get pokemonId {
    final $$PokemonTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableOrderingComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FormTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $FormTableTable> {
  $$FormTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<bool> get isDefault =>
      $composableBuilder(column: $table.isDefault, builder: (column) => column);

  $$PokemonTableTableAnnotationComposer get pokemonId {
    final $$PokemonTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> formTypeTableRefs<T extends Object>(
    Expression<T> Function($$FormTypeTableTableAnnotationComposer a) f,
  ) {
    final $$FormTypeTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.formTypeTable,
      getReferencedColumn: (t) => t.formId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FormTypeTableTableAnnotationComposer(
            $db: $db,
            $table: $db.formTypeTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$FormTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FormTableTable,
          FormRow,
          $$FormTableTableFilterComposer,
          $$FormTableTableOrderingComposer,
          $$FormTableTableAnnotationComposer,
          $$FormTableTableCreateCompanionBuilder,
          $$FormTableTableUpdateCompanionBuilder,
          (FormRow, $$FormTableTableReferences),
          FormRow,
          PrefetchHooks Function({bool pokemonId, bool formTypeTableRefs})
        > {
  $$FormTableTableTableManager(_$AppDatabase db, $FormTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FormTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FormTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FormTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> pokemonId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> imageUrl = const Value.absent(),
                Value<bool> isDefault = const Value.absent(),
              }) => FormTableCompanion(
                id: id,
                pokemonId: pokemonId,
                name: name,
                imageUrl: imageUrl,
                isDefault: isDefault,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int pokemonId,
                required String name,
                Value<String?> imageUrl = const Value.absent(),
                Value<bool> isDefault = const Value.absent(),
              }) => FormTableCompanion.insert(
                id: id,
                pokemonId: pokemonId,
                name: name,
                imageUrl: imageUrl,
                isDefault: isDefault,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$FormTableTable, FormRow>(table),
                  $$FormTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({pokemonId = false, formTypeTableRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (formTypeTableRefs) db.formTypeTable,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (pokemonId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.pokemonId,
                                    referencedTable: $$FormTableTableReferences
                                        ._pokemonIdTable(db),
                                    referencedColumn: $$FormTableTableReferences
                                        ._pokemonIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (formTypeTableRefs)
                        await $_getPrefetchedDataByColumns<
                          FormRow,
                          $FormTableTable,
                          FormTypeRow,
                          $FormTypeTableTable
                        >(
                          currentTable: table,
                          referencedTable: $$FormTableTableReferences
                              ._formTypeTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$FormTableTableReferences(
                                db,
                                table,
                                p0,
                              ).formTypeTableRefs,
                          currentColumn: 'id',
                          referencedColumn: 'form_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$FormTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FormTableTable,
      FormRow,
      $$FormTableTableFilterComposer,
      $$FormTableTableOrderingComposer,
      $$FormTableTableAnnotationComposer,
      $$FormTableTableCreateCompanionBuilder,
      $$FormTableTableUpdateCompanionBuilder,
      (FormRow, $$FormTableTableReferences),
      FormRow,
      PrefetchHooks Function({bool pokemonId, bool formTypeTableRefs})
    >;
typedef $$FormTypeTableTableCreateCompanionBuilder =
    FormTypeTableCompanion Function({
      required int formId,
      required int typeId,
      required int slot,
      Value<int> rowid,
    });
typedef $$FormTypeTableTableUpdateCompanionBuilder =
    FormTypeTableCompanion Function({
      Value<int> formId,
      Value<int> typeId,
      Value<int> slot,
      Value<int> rowid,
    });

final class $$FormTypeTableTableReferences
    extends BaseReferences<_$AppDatabase, $FormTypeTableTable, FormTypeRow> {
  $$FormTypeTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $FormTableTable _formIdTable(_$AppDatabase db) =>
      db.formTable.createAlias('form_type_table__form_id__form_table__id');

  $$FormTableTableProcessedTableManager get formId {
    final $_column = $_itemColumn<int>('form_id')!;

    final manager = $$FormTableTableTableManager(
      $_db,
      $_db.formTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_formIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $TypeTableTable _typeIdTable(_$AppDatabase db) =>
      db.typeTable.createAlias('form_type_table__type_id__type_table__id');

  $$TypeTableTableProcessedTableManager get typeId {
    final $_column = $_itemColumn<int>('type_id')!;

    final manager = $$TypeTableTableTableManager(
      $_db,
      $_db.typeTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_typeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$FormTypeTableTableFilterComposer
    extends Composer<_$AppDatabase, $FormTypeTableTable> {
  $$FormTypeTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get slot => $composableBuilder(
    column: $table.slot,
    builder: (column) => ColumnFilters(column),
  );

  $$FormTableTableFilterComposer get formId {
    final $$FormTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.formId,
      referencedTable: $db.formTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FormTableTableFilterComposer(
            $db: $db,
            $table: $db.formTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TypeTableTableFilterComposer get typeId {
    final $$TypeTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.typeId,
      referencedTable: $db.typeTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypeTableTableFilterComposer(
            $db: $db,
            $table: $db.typeTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FormTypeTableTableOrderingComposer
    extends Composer<_$AppDatabase, $FormTypeTableTable> {
  $$FormTypeTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get slot => $composableBuilder(
    column: $table.slot,
    builder: (column) => ColumnOrderings(column),
  );

  $$FormTableTableOrderingComposer get formId {
    final $$FormTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.formId,
      referencedTable: $db.formTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FormTableTableOrderingComposer(
            $db: $db,
            $table: $db.formTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TypeTableTableOrderingComposer get typeId {
    final $$TypeTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.typeId,
      referencedTable: $db.typeTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypeTableTableOrderingComposer(
            $db: $db,
            $table: $db.typeTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FormTypeTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $FormTypeTableTable> {
  $$FormTypeTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get slot =>
      $composableBuilder(column: $table.slot, builder: (column) => column);

  $$FormTableTableAnnotationComposer get formId {
    final $$FormTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.formId,
      referencedTable: $db.formTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FormTableTableAnnotationComposer(
            $db: $db,
            $table: $db.formTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TypeTableTableAnnotationComposer get typeId {
    final $$TypeTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.typeId,
      referencedTable: $db.typeTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypeTableTableAnnotationComposer(
            $db: $db,
            $table: $db.typeTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FormTypeTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FormTypeTableTable,
          FormTypeRow,
          $$FormTypeTableTableFilterComposer,
          $$FormTypeTableTableOrderingComposer,
          $$FormTypeTableTableAnnotationComposer,
          $$FormTypeTableTableCreateCompanionBuilder,
          $$FormTypeTableTableUpdateCompanionBuilder,
          (FormTypeRow, $$FormTypeTableTableReferences),
          FormTypeRow,
          PrefetchHooks Function({bool formId, bool typeId})
        > {
  $$FormTypeTableTableTableManager(_$AppDatabase db, $FormTypeTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FormTypeTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FormTypeTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FormTypeTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> formId = const Value.absent(),
                Value<int> typeId = const Value.absent(),
                Value<int> slot = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FormTypeTableCompanion(
                formId: formId,
                typeId: typeId,
                slot: slot,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int formId,
                required int typeId,
                required int slot,
                Value<int> rowid = const Value.absent(),
              }) => FormTypeTableCompanion.insert(
                formId: formId,
                typeId: typeId,
                slot: slot,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$FormTypeTableTable, FormTypeRow>(table),
                  $$FormTypeTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({formId = false, typeId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (formId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.formId,
                                referencedTable: $$FormTypeTableTableReferences
                                    ._formIdTable(db),
                                referencedColumn: $$FormTypeTableTableReferences
                                    ._formIdTable(db)
                                    .id,
                              )
                              as T;
                    }
                    if (typeId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.typeId,
                                referencedTable: $$FormTypeTableTableReferences
                                    ._typeIdTable(db),
                                referencedColumn: $$FormTypeTableTableReferences
                                    ._typeIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$FormTypeTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FormTypeTableTable,
      FormTypeRow,
      $$FormTypeTableTableFilterComposer,
      $$FormTypeTableTableOrderingComposer,
      $$FormTypeTableTableAnnotationComposer,
      $$FormTypeTableTableCreateCompanionBuilder,
      $$FormTypeTableTableUpdateCompanionBuilder,
      (FormTypeRow, $$FormTypeTableTableReferences),
      FormTypeRow,
      PrefetchHooks Function({bool formId, bool typeId})
    >;
typedef $$EggGroupTableTableCreateCompanionBuilder =
    EggGroupTableCompanion Function({Value<int> id, required String name});
typedef $$EggGroupTableTableUpdateCompanionBuilder =
    EggGroupTableCompanion Function({Value<int> id, Value<String> name});

final class $$EggGroupTableTableReferences
    extends BaseReferences<_$AppDatabase, $EggGroupTableTable, EggGroupRow> {
  $$EggGroupTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<
    $PokemonEggGroupTableTable,
    List<PokemonEggGroupRow>
  >
  _pokemonEggGroupTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.pokemonEggGroupTable,
        aliasName: 'egg_group_table__id__pokemon_egg_group_table__egg_group_id',
      );

  $$PokemonEggGroupTableTableProcessedTableManager
  get pokemonEggGroupTableRefs {
    final manager = $$PokemonEggGroupTableTableTableManager(
      $_db,
      $_db.pokemonEggGroupTable,
    ).filter((f) => f.eggGroupId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _pokemonEggGroupTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$EggGroupTableTableFilterComposer
    extends Composer<_$AppDatabase, $EggGroupTableTable> {
  $$EggGroupTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> pokemonEggGroupTableRefs(
    Expression<bool> Function($$PokemonEggGroupTableTableFilterComposer f) f,
  ) {
    final $$PokemonEggGroupTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonEggGroupTable,
      getReferencedColumn: (t) => t.eggGroupId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonEggGroupTableTableFilterComposer(
            $db: $db,
            $table: $db.pokemonEggGroupTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$EggGroupTableTableOrderingComposer
    extends Composer<_$AppDatabase, $EggGroupTableTable> {
  $$EggGroupTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$EggGroupTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $EggGroupTableTable> {
  $$EggGroupTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> pokemonEggGroupTableRefs<T extends Object>(
    Expression<T> Function($$PokemonEggGroupTableTableAnnotationComposer a) f,
  ) {
    final $$PokemonEggGroupTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.pokemonEggGroupTable,
          getReferencedColumn: (t) => t.eggGroupId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$PokemonEggGroupTableTableAnnotationComposer(
                $db: $db,
                $table: $db.pokemonEggGroupTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$EggGroupTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EggGroupTableTable,
          EggGroupRow,
          $$EggGroupTableTableFilterComposer,
          $$EggGroupTableTableOrderingComposer,
          $$EggGroupTableTableAnnotationComposer,
          $$EggGroupTableTableCreateCompanionBuilder,
          $$EggGroupTableTableUpdateCompanionBuilder,
          (EggGroupRow, $$EggGroupTableTableReferences),
          EggGroupRow,
          PrefetchHooks Function({bool pokemonEggGroupTableRefs})
        > {
  $$EggGroupTableTableTableManager(_$AppDatabase db, $EggGroupTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EggGroupTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EggGroupTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EggGroupTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
              }) => EggGroupTableCompanion(id: id, name: name),
          createCompanionCallback:
              ({Value<int> id = const Value.absent(), required String name}) =>
                  EggGroupTableCompanion.insert(id: id, name: name),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$EggGroupTableTable, EggGroupRow>(table),
                  $$EggGroupTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonEggGroupTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (pokemonEggGroupTableRefs) db.pokemonEggGroupTable,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (pokemonEggGroupTableRefs)
                    await $_getPrefetchedDataByColumns<
                      EggGroupRow,
                      $EggGroupTableTable,
                      PokemonEggGroupRow,
                      $PokemonEggGroupTableTable
                    >(
                      currentTable: table,
                      referencedTable: $$EggGroupTableTableReferences
                          ._pokemonEggGroupTableRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$EggGroupTableTableReferences(
                            db,
                            table,
                            p0,
                          ).pokemonEggGroupTableRefs,
                      currentColumn: 'id',
                      referencedColumn: 'egg_group_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$EggGroupTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EggGroupTableTable,
      EggGroupRow,
      $$EggGroupTableTableFilterComposer,
      $$EggGroupTableTableOrderingComposer,
      $$EggGroupTableTableAnnotationComposer,
      $$EggGroupTableTableCreateCompanionBuilder,
      $$EggGroupTableTableUpdateCompanionBuilder,
      (EggGroupRow, $$EggGroupTableTableReferences),
      EggGroupRow,
      PrefetchHooks Function({bool pokemonEggGroupTableRefs})
    >;
typedef $$PokemonEggGroupTableTableCreateCompanionBuilder =
    PokemonEggGroupTableCompanion Function({
      required int pokemonId,
      required int eggGroupId,
      Value<int> rowid,
    });
typedef $$PokemonEggGroupTableTableUpdateCompanionBuilder =
    PokemonEggGroupTableCompanion Function({
      Value<int> pokemonId,
      Value<int> eggGroupId,
      Value<int> rowid,
    });

final class $$PokemonEggGroupTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $PokemonEggGroupTableTable,
          PokemonEggGroupRow
        > {
  $$PokemonEggGroupTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $PokemonTableTable _pokemonIdTable(_$AppDatabase db) => db.pokemonTable
      .createAlias('pokemon_egg_group_table__pokemon_id__pokemon_table__id');

  $$PokemonTableTableProcessedTableManager get pokemonId {
    final $_column = $_itemColumn<int>('pokemon_id')!;

    final manager = $$PokemonTableTableTableManager(
      $_db,
      $_db.pokemonTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_pokemonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $EggGroupTableTable _eggGroupIdTable(_$AppDatabase db) =>
      db.eggGroupTable.createAlias(
        'pokemon_egg_group_table__egg_group_id__egg_group_table__id',
      );

  $$EggGroupTableTableProcessedTableManager get eggGroupId {
    final $_column = $_itemColumn<int>('egg_group_id')!;

    final manager = $$EggGroupTableTableTableManager(
      $_db,
      $_db.eggGroupTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_eggGroupIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PokemonEggGroupTableTableFilterComposer
    extends Composer<_$AppDatabase, $PokemonEggGroupTableTable> {
  $$PokemonEggGroupTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$PokemonTableTableFilterComposer get pokemonId {
    final $$PokemonTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableFilterComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$EggGroupTableTableFilterComposer get eggGroupId {
    final $$EggGroupTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.eggGroupId,
      referencedTable: $db.eggGroupTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EggGroupTableTableFilterComposer(
            $db: $db,
            $table: $db.eggGroupTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonEggGroupTableTableOrderingComposer
    extends Composer<_$AppDatabase, $PokemonEggGroupTableTable> {
  $$PokemonEggGroupTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$PokemonTableTableOrderingComposer get pokemonId {
    final $$PokemonTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableOrderingComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$EggGroupTableTableOrderingComposer get eggGroupId {
    final $$EggGroupTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.eggGroupId,
      referencedTable: $db.eggGroupTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EggGroupTableTableOrderingComposer(
            $db: $db,
            $table: $db.eggGroupTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonEggGroupTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $PokemonEggGroupTableTable> {
  $$PokemonEggGroupTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$PokemonTableTableAnnotationComposer get pokemonId {
    final $$PokemonTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemonTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTableTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$EggGroupTableTableAnnotationComposer get eggGroupId {
    final $$EggGroupTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.eggGroupId,
      referencedTable: $db.eggGroupTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EggGroupTableTableAnnotationComposer(
            $db: $db,
            $table: $db.eggGroupTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonEggGroupTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PokemonEggGroupTableTable,
          PokemonEggGroupRow,
          $$PokemonEggGroupTableTableFilterComposer,
          $$PokemonEggGroupTableTableOrderingComposer,
          $$PokemonEggGroupTableTableAnnotationComposer,
          $$PokemonEggGroupTableTableCreateCompanionBuilder,
          $$PokemonEggGroupTableTableUpdateCompanionBuilder,
          (PokemonEggGroupRow, $$PokemonEggGroupTableTableReferences),
          PokemonEggGroupRow,
          PrefetchHooks Function({bool pokemonId, bool eggGroupId})
        > {
  $$PokemonEggGroupTableTableTableManager(
    _$AppDatabase db,
    $PokemonEggGroupTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PokemonEggGroupTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PokemonEggGroupTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$PokemonEggGroupTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> pokemonId = const Value.absent(),
                Value<int> eggGroupId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PokemonEggGroupTableCompanion(
                pokemonId: pokemonId,
                eggGroupId: eggGroupId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int pokemonId,
                required int eggGroupId,
                Value<int> rowid = const Value.absent(),
              }) => PokemonEggGroupTableCompanion.insert(
                pokemonId: pokemonId,
                eggGroupId: eggGroupId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PokemonEggGroupTableTable, PokemonEggGroupRow>(
                    table,
                  ),
                  $$PokemonEggGroupTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonId = false, eggGroupId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (pokemonId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.pokemonId,
                                referencedTable:
                                    $$PokemonEggGroupTableTableReferences
                                        ._pokemonIdTable(db),
                                referencedColumn:
                                    $$PokemonEggGroupTableTableReferences
                                        ._pokemonIdTable(db)
                                        .id,
                              )
                              as T;
                    }
                    if (eggGroupId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.eggGroupId,
                                referencedTable:
                                    $$PokemonEggGroupTableTableReferences
                                        ._eggGroupIdTable(db),
                                referencedColumn:
                                    $$PokemonEggGroupTableTableReferences
                                        ._eggGroupIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PokemonEggGroupTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PokemonEggGroupTableTable,
      PokemonEggGroupRow,
      $$PokemonEggGroupTableTableFilterComposer,
      $$PokemonEggGroupTableTableOrderingComposer,
      $$PokemonEggGroupTableTableAnnotationComposer,
      $$PokemonEggGroupTableTableCreateCompanionBuilder,
      $$PokemonEggGroupTableTableUpdateCompanionBuilder,
      (PokemonEggGroupRow, $$PokemonEggGroupTableTableReferences),
      PokemonEggGroupRow,
      PrefetchHooks Function({bool pokemonId, bool eggGroupId})
    >;
typedef $$TypeMatchupTableTableCreateCompanionBuilder =
    TypeMatchupTableCompanion Function({
      required int attackingTypeId,
      required int defendingTypeId,
      required double multiplier,
      Value<int> rowid,
    });
typedef $$TypeMatchupTableTableUpdateCompanionBuilder =
    TypeMatchupTableCompanion Function({
      Value<int> attackingTypeId,
      Value<int> defendingTypeId,
      Value<double> multiplier,
      Value<int> rowid,
    });

final class $$TypeMatchupTableTableReferences
    extends
        BaseReferences<_$AppDatabase, $TypeMatchupTableTable, TypeMatchupRow> {
  $$TypeMatchupTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $TypeTableTable _attackingTypeIdTable(_$AppDatabase db) => db.typeTable
      .createAlias('type_matchup_table__attacking_type_id__type_table__id');

  $$TypeTableTableProcessedTableManager get attackingTypeId {
    final $_column = $_itemColumn<int>('attacking_type_id')!;

    final manager = $$TypeTableTableTableManager(
      $_db,
      $_db.typeTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_attackingTypeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $TypeTableTable _defendingTypeIdTable(_$AppDatabase db) => db.typeTable
      .createAlias('type_matchup_table__defending_type_id__type_table__id');

  $$TypeTableTableProcessedTableManager get defendingTypeId {
    final $_column = $_itemColumn<int>('defending_type_id')!;

    final manager = $$TypeTableTableTableManager(
      $_db,
      $_db.typeTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_defendingTypeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$TypeMatchupTableTableFilterComposer
    extends Composer<_$AppDatabase, $TypeMatchupTableTable> {
  $$TypeMatchupTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<double> get multiplier => $composableBuilder(
    column: $table.multiplier,
    builder: (column) => ColumnFilters(column),
  );

  $$TypeTableTableFilterComposer get attackingTypeId {
    final $$TypeTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.attackingTypeId,
      referencedTable: $db.typeTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypeTableTableFilterComposer(
            $db: $db,
            $table: $db.typeTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TypeTableTableFilterComposer get defendingTypeId {
    final $$TypeTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.defendingTypeId,
      referencedTable: $db.typeTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypeTableTableFilterComposer(
            $db: $db,
            $table: $db.typeTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TypeMatchupTableTableOrderingComposer
    extends Composer<_$AppDatabase, $TypeMatchupTableTable> {
  $$TypeMatchupTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<double> get multiplier => $composableBuilder(
    column: $table.multiplier,
    builder: (column) => ColumnOrderings(column),
  );

  $$TypeTableTableOrderingComposer get attackingTypeId {
    final $$TypeTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.attackingTypeId,
      referencedTable: $db.typeTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypeTableTableOrderingComposer(
            $db: $db,
            $table: $db.typeTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TypeTableTableOrderingComposer get defendingTypeId {
    final $$TypeTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.defendingTypeId,
      referencedTable: $db.typeTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypeTableTableOrderingComposer(
            $db: $db,
            $table: $db.typeTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TypeMatchupTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $TypeMatchupTableTable> {
  $$TypeMatchupTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<double> get multiplier => $composableBuilder(
    column: $table.multiplier,
    builder: (column) => column,
  );

  $$TypeTableTableAnnotationComposer get attackingTypeId {
    final $$TypeTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.attackingTypeId,
      referencedTable: $db.typeTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypeTableTableAnnotationComposer(
            $db: $db,
            $table: $db.typeTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TypeTableTableAnnotationComposer get defendingTypeId {
    final $$TypeTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.defendingTypeId,
      referencedTable: $db.typeTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypeTableTableAnnotationComposer(
            $db: $db,
            $table: $db.typeTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TypeMatchupTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TypeMatchupTableTable,
          TypeMatchupRow,
          $$TypeMatchupTableTableFilterComposer,
          $$TypeMatchupTableTableOrderingComposer,
          $$TypeMatchupTableTableAnnotationComposer,
          $$TypeMatchupTableTableCreateCompanionBuilder,
          $$TypeMatchupTableTableUpdateCompanionBuilder,
          (TypeMatchupRow, $$TypeMatchupTableTableReferences),
          TypeMatchupRow,
          PrefetchHooks Function({bool attackingTypeId, bool defendingTypeId})
        > {
  $$TypeMatchupTableTableTableManager(
    _$AppDatabase db,
    $TypeMatchupTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TypeMatchupTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TypeMatchupTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TypeMatchupTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> attackingTypeId = const Value.absent(),
                Value<int> defendingTypeId = const Value.absent(),
                Value<double> multiplier = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TypeMatchupTableCompanion(
                attackingTypeId: attackingTypeId,
                defendingTypeId: defendingTypeId,
                multiplier: multiplier,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int attackingTypeId,
                required int defendingTypeId,
                required double multiplier,
                Value<int> rowid = const Value.absent(),
              }) => TypeMatchupTableCompanion.insert(
                attackingTypeId: attackingTypeId,
                defendingTypeId: defendingTypeId,
                multiplier: multiplier,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$TypeMatchupTableTable, TypeMatchupRow>(table),
                  $$TypeMatchupTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({attackingTypeId = false, defendingTypeId = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (attackingTypeId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.attackingTypeId,
                                    referencedTable:
                                        $$TypeMatchupTableTableReferences
                                            ._attackingTypeIdTable(db),
                                    referencedColumn:
                                        $$TypeMatchupTableTableReferences
                                            ._attackingTypeIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }
                        if (defendingTypeId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.defendingTypeId,
                                    referencedTable:
                                        $$TypeMatchupTableTableReferences
                                            ._defendingTypeIdTable(db),
                                    referencedColumn:
                                        $$TypeMatchupTableTableReferences
                                            ._defendingTypeIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [];
                  },
                );
              },
        ),
      );
}

typedef $$TypeMatchupTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TypeMatchupTableTable,
      TypeMatchupRow,
      $$TypeMatchupTableTableFilterComposer,
      $$TypeMatchupTableTableOrderingComposer,
      $$TypeMatchupTableTableAnnotationComposer,
      $$TypeMatchupTableTableCreateCompanionBuilder,
      $$TypeMatchupTableTableUpdateCompanionBuilder,
      (TypeMatchupRow, $$TypeMatchupTableTableReferences),
      TypeMatchupRow,
      PrefetchHooks Function({bool attackingTypeId, bool defendingTypeId})
    >;
typedef $$SyncMetadataTableTableCreateCompanionBuilder =
    SyncMetadataTableCompanion Function({
      required String resourceKey,
      required SyncStatus status,
      Value<int> nextOffset,
      Value<DateTime?> lastSuccessAt,
      Value<int> rowid,
    });
typedef $$SyncMetadataTableTableUpdateCompanionBuilder =
    SyncMetadataTableCompanion Function({
      Value<String> resourceKey,
      Value<SyncStatus> status,
      Value<int> nextOffset,
      Value<DateTime?> lastSuccessAt,
      Value<int> rowid,
    });

class $$SyncMetadataTableTableFilterComposer
    extends Composer<_$AppDatabase, $SyncMetadataTableTable> {
  $$SyncMetadataTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get resourceKey => $composableBuilder(
    column: $table.resourceKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<SyncStatus, SyncStatus, String> get status =>
      $composableBuilder(
        column: $table.status,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnFilters<int> get nextOffset => $composableBuilder(
    column: $table.nextOffset,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastSuccessAt => $composableBuilder(
    column: $table.lastSuccessAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SyncMetadataTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SyncMetadataTableTable> {
  $$SyncMetadataTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get resourceKey => $composableBuilder(
    column: $table.resourceKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get nextOffset => $composableBuilder(
    column: $table.nextOffset,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastSuccessAt => $composableBuilder(
    column: $table.lastSuccessAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SyncMetadataTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SyncMetadataTableTable> {
  $$SyncMetadataTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get resourceKey => $composableBuilder(
    column: $table.resourceKey,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<SyncStatus, String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get nextOffset => $composableBuilder(
    column: $table.nextOffset,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastSuccessAt => $composableBuilder(
    column: $table.lastSuccessAt,
    builder: (column) => column,
  );
}

class $$SyncMetadataTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SyncMetadataTableTable,
          SyncMetadataRow,
          $$SyncMetadataTableTableFilterComposer,
          $$SyncMetadataTableTableOrderingComposer,
          $$SyncMetadataTableTableAnnotationComposer,
          $$SyncMetadataTableTableCreateCompanionBuilder,
          $$SyncMetadataTableTableUpdateCompanionBuilder,
          (
            SyncMetadataRow,
            BaseReferences<
              _$AppDatabase,
              $SyncMetadataTableTable,
              SyncMetadataRow
            >,
          ),
          SyncMetadataRow,
          PrefetchHooks Function()
        > {
  $$SyncMetadataTableTableTableManager(
    _$AppDatabase db,
    $SyncMetadataTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SyncMetadataTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SyncMetadataTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SyncMetadataTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> resourceKey = const Value.absent(),
                Value<SyncStatus> status = const Value.absent(),
                Value<int> nextOffset = const Value.absent(),
                Value<DateTime?> lastSuccessAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SyncMetadataTableCompanion(
                resourceKey: resourceKey,
                status: status,
                nextOffset: nextOffset,
                lastSuccessAt: lastSuccessAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String resourceKey,
                required SyncStatus status,
                Value<int> nextOffset = const Value.absent(),
                Value<DateTime?> lastSuccessAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SyncMetadataTableCompanion.insert(
                resourceKey: resourceKey,
                status: status,
                nextOffset: nextOffset,
                lastSuccessAt: lastSuccessAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$SyncMetadataTableTable, SyncMetadataRow>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $SyncMetadataTableTable,
                    SyncMetadataRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SyncMetadataTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SyncMetadataTableTable,
      SyncMetadataRow,
      $$SyncMetadataTableTableFilterComposer,
      $$SyncMetadataTableTableOrderingComposer,
      $$SyncMetadataTableTableAnnotationComposer,
      $$SyncMetadataTableTableCreateCompanionBuilder,
      $$SyncMetadataTableTableUpdateCompanionBuilder,
      (
        SyncMetadataRow,
        BaseReferences<_$AppDatabase, $SyncMetadataTableTable, SyncMetadataRow>,
      ),
      SyncMetadataRow,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$PokemonTableTableTableManager get pokemonTable =>
      $$PokemonTableTableTableManager(_db, _db.pokemonTable);
  $$FavoriteTableTableTableManager get favoriteTable =>
      $$FavoriteTableTableTableManager(_db, _db.favoriteTable);
  $$TypeTableTableTableManager get typeTable =>
      $$TypeTableTableTableManager(_db, _db.typeTable);
  $$PokemonTypeTableTableTableManager get pokemonTypeTable =>
      $$PokemonTypeTableTableTableManager(_db, _db.pokemonTypeTable);
  $$StatTableTableTableManager get statTable =>
      $$StatTableTableTableManager(_db, _db.statTable);
  $$AbilityTableTableTableManager get abilityTable =>
      $$AbilityTableTableTableManager(_db, _db.abilityTable);
  $$PokemonAbilityTableTableTableManager get pokemonAbilityTable =>
      $$PokemonAbilityTableTableTableManager(_db, _db.pokemonAbilityTable);
  $$MoveTableTableTableManager get moveTable =>
      $$MoveTableTableTableManager(_db, _db.moveTable);
  $$PokemonMoveTableTableTableManager get pokemonMoveTable =>
      $$PokemonMoveTableTableTableManager(_db, _db.pokemonMoveTable);
  $$EvolutionTableTableTableManager get evolutionTable =>
      $$EvolutionTableTableTableManager(_db, _db.evolutionTable);
  $$FormTableTableTableManager get formTable =>
      $$FormTableTableTableManager(_db, _db.formTable);
  $$FormTypeTableTableTableManager get formTypeTable =>
      $$FormTypeTableTableTableManager(_db, _db.formTypeTable);
  $$EggGroupTableTableTableManager get eggGroupTable =>
      $$EggGroupTableTableTableManager(_db, _db.eggGroupTable);
  $$PokemonEggGroupTableTableTableManager get pokemonEggGroupTable =>
      $$PokemonEggGroupTableTableTableManager(_db, _db.pokemonEggGroupTable);
  $$TypeMatchupTableTableTableManager get typeMatchupTable =>
      $$TypeMatchupTableTableTableManager(_db, _db.typeMatchupTable);
  $$SyncMetadataTableTableTableManager get syncMetadataTable =>
      $$SyncMetadataTableTableTableManager(_db, _db.syncMetadataTable);
}
