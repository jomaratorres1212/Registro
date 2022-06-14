import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'registro_clientes_record.g.dart';

abstract class RegistroClientesRecord
    implements Built<RegistroClientesRecord, RegistroClientesRecordBuilder> {
  static Serializer<RegistroClientesRecord> get serializer =>
      _$registroClientesRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Nombre')
  String get nombre;

  @nullable
  @BuiltValueField(wireName: 'Apellidos')
  String get apellidos;

  @nullable
  @BuiltValueField(wireName: 'Edad')
  String get edad;

  @nullable
  @BuiltValueField(wireName: 'Curp')
  String get curp;

  @nullable
  @BuiltValueField(wireName: 'Direccion')
  String get direccion;

  @nullable
  @BuiltValueField(wireName: 'Telefono')
  String get telefono;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(RegistroClientesRecordBuilder builder) =>
      builder
        ..nombre = ''
        ..apellidos = ''
        ..edad = ''
        ..curp = ''
        ..direccion = ''
        ..telefono = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RegistroClientes');

  static Stream<RegistroClientesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<RegistroClientesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  RegistroClientesRecord._();
  factory RegistroClientesRecord(
          [void Function(RegistroClientesRecordBuilder) updates]) =
      _$RegistroClientesRecord;

  static RegistroClientesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createRegistroClientesRecordData({
  String nombre,
  String apellidos,
  String edad,
  String curp,
  String direccion,
  String telefono,
}) =>
    serializers.toFirestore(
        RegistroClientesRecord.serializer,
        RegistroClientesRecord((r) => r
          ..nombre = nombre
          ..apellidos = apellidos
          ..edad = edad
          ..curp = curp
          ..direccion = direccion
          ..telefono = telefono));
