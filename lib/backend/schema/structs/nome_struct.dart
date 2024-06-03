// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NomeStruct extends BaseStruct {
  NomeStruct({
    String? nome,
    String? profissao,
  })  : _nome = nome,
        _profissao = profissao;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "profissao" field.
  String? _profissao;
  String get profissao => _profissao ?? '';
  set profissao(String? val) => _profissao = val;
  bool hasProfissao() => _profissao != null;

  static NomeStruct fromMap(Map<String, dynamic> data) => NomeStruct(
        nome: data['nome'] as String?,
        profissao: data['profissao'] as String?,
      );

  static NomeStruct? maybeFromMap(dynamic data) =>
      data is Map ? NomeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'profissao': _profissao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'profissao': serializeParam(
          _profissao,
          ParamType.String,
        ),
      }.withoutNulls;

  static NomeStruct fromSerializableMap(Map<String, dynamic> data) =>
      NomeStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        profissao: deserializeParam(
          data['profissao'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NomeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NomeStruct &&
        nome == other.nome &&
        profissao == other.profissao;
  }

  @override
  int get hashCode => const ListEquality().hash([nome, profissao]);
}

NomeStruct createNomeStruct({
  String? nome,
  String? profissao,
}) =>
    NomeStruct(
      nome: nome,
      profissao: profissao,
    );
