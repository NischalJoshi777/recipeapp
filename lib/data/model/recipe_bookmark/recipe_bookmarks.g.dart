// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_bookmarks.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecipeBookmarkImplAdapter extends TypeAdapter<_$RecipeBookmarkImpl> {
  @override
  final int typeId = 0;

  @override
  _$RecipeBookmarkImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$RecipeBookmarkImpl(
      preparationMinutes: fields[0] as int,
      cookingMinutes: fields[1] as int,
      aggregateLikes: fields[2] as int,
      dishTypes: (fields[3] as List).cast<String>(),
      summary: fields[4] as String,
      title: fields[5] as String,
      image: fields[6] as String,
      healthScore: fields[7] as double,
      id: fields[10] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$RecipeBookmarkImpl obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.preparationMinutes)
      ..writeByte(1)
      ..write(obj.cookingMinutes)
      ..writeByte(2)
      ..write(obj.aggregateLikes)
      ..writeByte(4)
      ..write(obj.summary)
      ..writeByte(5)
      ..write(obj.title)
      ..writeByte(6)
      ..write(obj.image)
      ..writeByte(7)
      ..write(obj.healthScore)
      ..writeByte(10)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.dishTypes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecipeBookmarkImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
