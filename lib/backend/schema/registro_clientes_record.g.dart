// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registro_clientes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RegistroClientesRecord> _$registroClientesRecordSerializer =
    new _$RegistroClientesRecordSerializer();

class _$RegistroClientesRecordSerializer
    implements StructuredSerializer<RegistroClientesRecord> {
  @override
  final Iterable<Type> types = const [
    RegistroClientesRecord,
    _$RegistroClientesRecord
  ];
  @override
  final String wireName = 'RegistroClientesRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RegistroClientesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('Nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.apellidos;
    if (value != null) {
      result
        ..add('Apellidos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.edad;
    if (value != null) {
      result
        ..add('Edad')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.curp;
    if (value != null) {
      result
        ..add('Curp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.direccion;
    if (value != null) {
      result
        ..add('Direccion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.telefono;
    if (value != null) {
      result
        ..add('Telefono')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  RegistroClientesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegistroClientesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Apellidos':
          result.apellidos = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Edad':
          result.edad = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Curp':
          result.curp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Direccion':
          result.direccion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Telefono':
          result.telefono = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$RegistroClientesRecord extends RegistroClientesRecord {
  @override
  final String nombre;
  @override
  final String apellidos;
  @override
  final String edad;
  @override
  final String curp;
  @override
  final String direccion;
  @override
  final String telefono;
  @override
  final DocumentReference<Object> reference;

  factory _$RegistroClientesRecord(
          [void Function(RegistroClientesRecordBuilder) updates]) =>
      (new RegistroClientesRecordBuilder()..update(updates)).build();

  _$RegistroClientesRecord._(
      {this.nombre,
      this.apellidos,
      this.edad,
      this.curp,
      this.direccion,
      this.telefono,
      this.reference})
      : super._();

  @override
  RegistroClientesRecord rebuild(
          void Function(RegistroClientesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegistroClientesRecordBuilder toBuilder() =>
      new RegistroClientesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistroClientesRecord &&
        nombre == other.nombre &&
        apellidos == other.apellidos &&
        edad == other.edad &&
        curp == other.curp &&
        direccion == other.direccion &&
        telefono == other.telefono &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, nombre.hashCode), apellidos.hashCode),
                        edad.hashCode),
                    curp.hashCode),
                direccion.hashCode),
            telefono.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RegistroClientesRecord')
          ..add('nombre', nombre)
          ..add('apellidos', apellidos)
          ..add('edad', edad)
          ..add('curp', curp)
          ..add('direccion', direccion)
          ..add('telefono', telefono)
          ..add('reference', reference))
        .toString();
  }
}

class RegistroClientesRecordBuilder
    implements Builder<RegistroClientesRecord, RegistroClientesRecordBuilder> {
  _$RegistroClientesRecord _$v;

  String _nombre;
  String get nombre => _$this._nombre;
  set nombre(String nombre) => _$this._nombre = nombre;

  String _apellidos;
  String get apellidos => _$this._apellidos;
  set apellidos(String apellidos) => _$this._apellidos = apellidos;

  String _edad;
  String get edad => _$this._edad;
  set edad(String edad) => _$this._edad = edad;

  String _curp;
  String get curp => _$this._curp;
  set curp(String curp) => _$this._curp = curp;

  String _direccion;
  String get direccion => _$this._direccion;
  set direccion(String direccion) => _$this._direccion = direccion;

  String _telefono;
  String get telefono => _$this._telefono;
  set telefono(String telefono) => _$this._telefono = telefono;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  RegistroClientesRecordBuilder() {
    RegistroClientesRecord._initializeBuilder(this);
  }

  RegistroClientesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _apellidos = $v.apellidos;
      _edad = $v.edad;
      _curp = $v.curp;
      _direccion = $v.direccion;
      _telefono = $v.telefono;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistroClientesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegistroClientesRecord;
  }

  @override
  void update(void Function(RegistroClientesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegistroClientesRecord build() {
    final _$result = _$v ??
        new _$RegistroClientesRecord._(
            nombre: nombre,
            apellidos: apellidos,
            edad: edad,
            curp: curp,
            direccion: direccion,
            telefono: telefono,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
