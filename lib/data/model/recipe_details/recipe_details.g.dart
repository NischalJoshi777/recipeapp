// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_details.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecipeDetailsImplAdapter extends TypeAdapter<_$RecipeDetailsImpl> {
  @override
  final int typeId = 0;

  @override
  _$RecipeDetailsImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$RecipeDetailsImpl(
      id: fields[0] as int,
      vegan: fields[1] as bool,
      vegetarian: fields[2] as bool,
      dairyFree: fields[3] as bool,
      glutenFree: fields[4] as bool,
      ketogenic: fields[5] as bool,
      preparationMinutes: fields[6] as int,
      cookingMinutes: fields[7] as int,
      aggregateLikes: fields[8] as int,
      dishTypes: (fields[9] as List).cast<String>(),
      summary: fields[10] as String,
      title: fields[11] as String,
      image: fields[12] as String,
      instructions: fields[13] as String,
      healthScore: fields[14] as double,
      servings: fields[15] as int,
      extendedIngredients: (fields[16] as List).cast<Ingredients>(),
      nutrition: fields[17] as Nutrition,
    );
  }

  @override
  void write(BinaryWriter writer, _$RecipeDetailsImpl obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.vegan)
      ..writeByte(2)
      ..write(obj.vegetarian)
      ..writeByte(3)
      ..write(obj.dairyFree)
      ..writeByte(4)
      ..write(obj.glutenFree)
      ..writeByte(5)
      ..write(obj.ketogenic)
      ..writeByte(6)
      ..write(obj.preparationMinutes)
      ..writeByte(7)
      ..write(obj.cookingMinutes)
      ..writeByte(8)
      ..write(obj.aggregateLikes)
      ..writeByte(10)
      ..write(obj.summary)
      ..writeByte(11)
      ..write(obj.title)
      ..writeByte(12)
      ..write(obj.image)
      ..writeByte(13)
      ..write(obj.instructions)
      ..writeByte(14)
      ..write(obj.healthScore)
      ..writeByte(15)
      ..write(obj.servings)
      ..writeByte(17)
      ..write(obj.nutrition)
      ..writeByte(9)
      ..write(obj.dishTypes)
      ..writeByte(16)
      ..write(obj.extendedIngredients);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecipeDetailsImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NutritionImplAdapter extends TypeAdapter<_$NutritionImpl> {
  @override
  final int typeId = 1;

  @override
  _$NutritionImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$NutritionImpl(
      caloricBreakdown: fields[0] as CaloricBreakDown,
      nutrients: (fields[1] as List).cast<Nutrients>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$NutritionImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.caloricBreakdown)
      ..writeByte(1)
      ..write(obj.nutrients);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NutritionImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NutrientsImplAdapter extends TypeAdapter<_$NutrientsImpl> {
  @override
  final int typeId = 2;

  @override
  _$NutrientsImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$NutrientsImpl(
      name: fields[0] as String,
      amount: fields[1] as double,
      unit: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$NutrientsImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.amount)
      ..writeByte(2)
      ..write(obj.unit);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NutrientsImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CaloricBreakDownImplAdapter extends TypeAdapter<_$CaloricBreakDownImpl> {
  @override
  final int typeId = 3;

  @override
  _$CaloricBreakDownImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$CaloricBreakDownImpl(
      percentProtein: fields[0] as double,
      percentFat: fields[1] as double,
      percentCarbs: fields[2] as double,
    );
  }

  @override
  void write(BinaryWriter writer, _$CaloricBreakDownImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.percentProtein)
      ..writeByte(1)
      ..write(obj.percentFat)
      ..writeByte(2)
      ..write(obj.percentCarbs);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CaloricBreakDownImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class IngredientsImplAdapter extends TypeAdapter<_$IngredientsImpl> {
  @override
  final int typeId = 4;

  @override
  _$IngredientsImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$IngredientsImpl(
      image: fields[0] as String?,
      name: fields[1] as String,
      measures: fields[2] as Measure,
    );
  }

  @override
  void write(BinaryWriter writer, _$IngredientsImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.image)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.measures);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IngredientsImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MeasureImplAdapter extends TypeAdapter<_$MeasureImpl> {
  @override
  final int typeId = 5;

  @override
  _$MeasureImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$MeasureImpl(
      metric: fields[0] as UnitMeasure,
      us: fields[1] as UnitMeasure,
    );
  }

  @override
  void write(BinaryWriter writer, _$MeasureImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.metric)
      ..writeByte(1)
      ..write(obj.us);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MeasureImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UnitMeasureImplAdapter extends TypeAdapter<_$UnitMeasureImpl> {
  @override
  final int typeId = 6;

  @override
  _$UnitMeasureImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$UnitMeasureImpl(
      amount: fields[0] as double,
      unitShort: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$UnitMeasureImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.amount)
      ..writeByte(1)
      ..write(obj.unitShort);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnitMeasureImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeDetailsImpl _$$RecipeDetailsImplFromJson(Map<String, dynamic> json) =>
    _$RecipeDetailsImpl(
      id: (json['id'] as num).toInt(),
      vegan: json['vegan'] as bool? ?? false,
      vegetarian: json['vegetarian'] as bool? ?? false,
      dairyFree: json['dairyFree'] as bool? ?? false,
      glutenFree: json['glutenFree'] as bool? ?? false,
      ketogenic: json['ketogenic'] as bool? ?? false,
      preparationMinutes: (json['preparationMinutes'] as num?)?.toInt() ?? 0,
      cookingMinutes: (json['cookingMinutes'] as num?)?.toInt() ?? 0,
      aggregateLikes: (json['aggregateLikes'] as num?)?.toInt() ?? 0,
      dishTypes: (json['dishTypes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      summary: json['summary'] as String? ?? 'N/A',
      title: json['title'] as String? ?? 'N/A',
      image: json['image'] as String,
      instructions: json['instructions'] as String,
      healthScore: (json['healthScore'] as num?)?.toDouble() ?? 0.0,
      servings: (json['servings'] as num).toInt(),
      extendedIngredients: (json['extendedIngredients'] as List<dynamic>?)
              ?.map((e) => Ingredients.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      nutrition: Nutrition.fromJson(json['nutrition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecipeDetailsImplToJson(_$RecipeDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vegan': instance.vegan,
      'vegetarian': instance.vegetarian,
      'dairyFree': instance.dairyFree,
      'glutenFree': instance.glutenFree,
      'ketogenic': instance.ketogenic,
      'preparationMinutes': instance.preparationMinutes,
      'cookingMinutes': instance.cookingMinutes,
      'aggregateLikes': instance.aggregateLikes,
      'dishTypes': instance.dishTypes,
      'summary': instance.summary,
      'title': instance.title,
      'image': instance.image,
      'instructions': instance.instructions,
      'healthScore': instance.healthScore,
      'servings': instance.servings,
      'extendedIngredients': instance.extendedIngredients,
      'nutrition': instance.nutrition,
    };

_$NutritionImpl _$$NutritionImplFromJson(Map<String, dynamic> json) =>
    _$NutritionImpl(
      caloricBreakdown: CaloricBreakDown.fromJson(
          json['caloricBreakdown'] as Map<String, dynamic>),
      nutrients: (json['nutrients'] as List<dynamic>?)
              ?.map((e) => Nutrients.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$NutritionImplToJson(_$NutritionImpl instance) =>
    <String, dynamic>{
      'caloricBreakdown': instance.caloricBreakdown,
      'nutrients': instance.nutrients,
    };

_$NutrientsImpl _$$NutrientsImplFromJson(Map<String, dynamic> json) =>
    _$NutrientsImpl(
      name: json['name'] as String,
      amount: (json['amount'] as num).toDouble(),
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$$NutrientsImplToJson(_$NutrientsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
      'unit': instance.unit,
    };

_$CaloricBreakDownImpl _$$CaloricBreakDownImplFromJson(
        Map<String, dynamic> json) =>
    _$CaloricBreakDownImpl(
      percentProtein: (json['percentProtein'] as num).toDouble(),
      percentFat: (json['percentFat'] as num).toDouble(),
      percentCarbs: (json['percentCarbs'] as num).toDouble(),
    );

Map<String, dynamic> _$$CaloricBreakDownImplToJson(
        _$CaloricBreakDownImpl instance) =>
    <String, dynamic>{
      'percentProtein': instance.percentProtein,
      'percentFat': instance.percentFat,
      'percentCarbs': instance.percentCarbs,
    };

_$IngredientsImpl _$$IngredientsImplFromJson(Map<String, dynamic> json) =>
    _$IngredientsImpl(
      image: json['image'] as String?,
      name: json['name'] as String? ?? 'N/A',
      measures: Measure.fromJson(json['measures'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IngredientsImplToJson(_$IngredientsImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'measures': instance.measures,
    };

_$MeasureImpl _$$MeasureImplFromJson(Map<String, dynamic> json) =>
    _$MeasureImpl(
      metric: UnitMeasure.fromJson(json['metric'] as Map<String, dynamic>),
      us: UnitMeasure.fromJson(json['us'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MeasureImplToJson(_$MeasureImpl instance) =>
    <String, dynamic>{
      'metric': instance.metric,
      'us': instance.us,
    };

_$UnitMeasureImpl _$$UnitMeasureImplFromJson(Map<String, dynamic> json) =>
    _$UnitMeasureImpl(
      amount: (json['amount'] as num).toDouble(),
      unitShort: json['unitShort'] as String,
      unitLong: json['unitLong'] as String? ?? 'N/A',
    );

Map<String, dynamic> _$$UnitMeasureImplToJson(_$UnitMeasureImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'unitShort': instance.unitShort,
      'unitLong': instance.unitLong,
    };
