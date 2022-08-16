// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fact_table.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FactTableAdapter extends TypeAdapter<FactTable> {
  @override
  final int typeId = 0;

  @override
  FactTable read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FactTable(
      status: fields[0] as StatusTable,
      id: fields[1] as String,
      user: fields[2] as String,
      text: fields[3] as String,
      source: fields[4] as String,
      updatedAt: fields[5] as String,
      type: fields[6] as String,
      createdAt: fields[7] as String,
      deleted: fields[8] as bool,
      used: fields[9] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, FactTable obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.status)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.user)
      ..writeByte(3)
      ..write(obj.text)
      ..writeByte(4)
      ..write(obj.source)
      ..writeByte(5)
      ..write(obj.updatedAt)
      ..writeByte(6)
      ..write(obj.type)
      ..writeByte(7)
      ..write(obj.createdAt)
      ..writeByte(8)
      ..write(obj.deleted)
      ..writeByte(9)
      ..write(obj.used);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FactTableAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
