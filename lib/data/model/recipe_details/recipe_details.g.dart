// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_details.dart';

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
