// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_table.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StatusTableAdapter extends TypeAdapter<StatusTable> {
  @override
  final int typeId = 1;

  @override
  StatusTable read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StatusTable(
      verified: fields[0] as bool,
      feedback: fields[1] as String,
      sentCount: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, StatusTable obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.verified)
      ..writeByte(1)
      ..write(obj.feedback)
      ..writeByte(2)
      ..write(obj.sentCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatusTableAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
