// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift.dart';

// ignore_for_file: type=lint
class $ProdutosTable extends Produtos with TableInfo<$ProdutosTable, Produto> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProdutosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
      'nome', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _precoMeta = const VerificationMeta('preco');
  @override
  late final GeneratedColumn<int> preco = GeneratedColumn<int>(
      'preco', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _imagemMeta = const VerificationMeta('imagem');
  @override
  late final GeneratedColumn<String> imagem = GeneratedColumn<String>(
      'imagem', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _concluidaMeta =
      const VerificationMeta('concluida');
  @override
  late final GeneratedColumn<bool> concluida = GeneratedColumn<bool>(
      'concluida', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("concluida" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [id, nome, preco, imagem, concluida];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'produtos';
  @override
  VerificationContext validateIntegrity(Insertable<Produto> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('preco')) {
      context.handle(
          _precoMeta, preco.isAcceptableOrUnknown(data['preco']!, _precoMeta));
    } else if (isInserting) {
      context.missing(_precoMeta);
    }
    if (data.containsKey('imagem')) {
      context.handle(_imagemMeta,
          imagem.isAcceptableOrUnknown(data['imagem']!, _imagemMeta));
    } else if (isInserting) {
      context.missing(_imagemMeta);
    }
    if (data.containsKey('concluida')) {
      context.handle(_concluidaMeta,
          concluida.isAcceptableOrUnknown(data['concluida']!, _concluidaMeta));
    } else if (isInserting) {
      context.missing(_concluidaMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Produto map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Produto(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nome'])!,
      preco: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}preco'])!,
      imagem: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}imagem'])!,
      concluida: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}concluida'])!,
    );
  }

  @override
  $ProdutosTable createAlias(String alias) {
    return $ProdutosTable(attachedDatabase, alias);
  }
}

class Produto extends DataClass implements Insertable<Produto> {
  final int id;
  final String nome;
  final int preco;
  final String imagem;
  final bool concluida;
  const Produto(
      {required this.id,
      required this.nome,
      required this.preco,
      required this.imagem,
      required this.concluida});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nome'] = Variable<String>(nome);
    map['preco'] = Variable<int>(preco);
    map['imagem'] = Variable<String>(imagem);
    map['concluida'] = Variable<bool>(concluida);
    return map;
  }

  ProdutosCompanion toCompanion(bool nullToAbsent) {
    return ProdutosCompanion(
      id: Value(id),
      nome: Value(nome),
      preco: Value(preco),
      imagem: Value(imagem),
      concluida: Value(concluida),
    );
  }

  factory Produto.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Produto(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      preco: serializer.fromJson<int>(json['preco']),
      imagem: serializer.fromJson<String>(json['imagem']),
      concluida: serializer.fromJson<bool>(json['concluida']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'preco': serializer.toJson<int>(preco),
      'imagem': serializer.toJson<String>(imagem),
      'concluida': serializer.toJson<bool>(concluida),
    };
  }

  Produto copyWith(
          {int? id,
          String? nome,
          int? preco,
          String? imagem,
          bool? concluida}) =>
      Produto(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        preco: preco ?? this.preco,
        imagem: imagem ?? this.imagem,
        concluida: concluida ?? this.concluida,
      );
  @override
  String toString() {
    return (StringBuffer('Produto(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('preco: $preco, ')
          ..write('imagem: $imagem, ')
          ..write('concluida: $concluida')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nome, preco, imagem, concluida);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Produto &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.preco == this.preco &&
          other.imagem == this.imagem &&
          other.concluida == this.concluida);
}

class ProdutosCompanion extends UpdateCompanion<Produto> {
  final Value<int> id;
  final Value<String> nome;
  final Value<int> preco;
  final Value<String> imagem;
  final Value<bool> concluida;
  const ProdutosCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.preco = const Value.absent(),
    this.imagem = const Value.absent(),
    this.concluida = const Value.absent(),
  });
  ProdutosCompanion.insert({
    this.id = const Value.absent(),
    required String nome,
    required int preco,
    required String imagem,
    required bool concluida,
  })  : nome = Value(nome),
        preco = Value(preco),
        imagem = Value(imagem),
        concluida = Value(concluida);
  static Insertable<Produto> custom({
    Expression<int>? id,
    Expression<String>? nome,
    Expression<int>? preco,
    Expression<String>? imagem,
    Expression<bool>? concluida,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (preco != null) 'preco': preco,
      if (imagem != null) 'imagem': imagem,
      if (concluida != null) 'concluida': concluida,
    });
  }

  ProdutosCompanion copyWith(
      {Value<int>? id,
      Value<String>? nome,
      Value<int>? preco,
      Value<String>? imagem,
      Value<bool>? concluida}) {
    return ProdutosCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      preco: preco ?? this.preco,
      imagem: imagem ?? this.imagem,
      concluida: concluida ?? this.concluida,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (preco.present) {
      map['preco'] = Variable<int>(preco.value);
    }
    if (imagem.present) {
      map['imagem'] = Variable<String>(imagem.value);
    }
    if (concluida.present) {
      map['concluida'] = Variable<bool>(concluida.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProdutosCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('preco: $preco, ')
          ..write('imagem: $imagem, ')
          ..write('concluida: $concluida')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $ProdutosTable produtos = $ProdutosTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [produtos];
}
