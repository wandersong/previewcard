import '../database.dart';

class DadosTable extends SupabaseTable<DadosRow> {
  @override
  String get tableName => 'dados';

  @override
  DadosRow createRow(Map<String, dynamic> data) => DadosRow(data);
}

class DadosRow extends SupabaseDataRow {
  DadosRow(super.data);

  @override
  SupabaseTable get table => DadosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('Nome');
  set nome(String? value) => setField<String>('Nome', value);

  String? get prof => getField<String>('prof');
  set prof(String? value) => setField<String>('prof', value);
}
