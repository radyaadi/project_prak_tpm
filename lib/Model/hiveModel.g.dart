// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hiveModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CocktailHiveAdapter extends TypeAdapter<CocktailHive> {
  @override
  final int typeId = 0;

  @override
  CocktailHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CocktailHive(
      name: fields[0] as String,
      category: fields[1] as String,
      image: fields[2] as String,
      ingredient1: fields[3] as String,
      ingredient2: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CocktailHive obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.category)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.ingredient1)
      ..writeByte(4)
      ..write(obj.ingredient2);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CocktailHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
