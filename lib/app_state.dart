import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  NomeStruct _nomeprofissao = NomeStruct();
  NomeStruct get nomeprofissao => _nomeprofissao;
  set nomeprofissao(NomeStruct value) {
    _nomeprofissao = value;
  }

  void updateNomeprofissaoStruct(Function(NomeStruct) updateFn) {
    updateFn(_nomeprofissao);
  }
}
