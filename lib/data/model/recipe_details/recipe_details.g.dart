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
      preparationMinutes: (json['preparationMinutes'] as num?)?.toInt() ?? 0,
      cookingMinutes: (json['cookingMinutes'] as num?)?.toInt() ?? 0,
      aggregatedLikes: (json['aggregatedLikes'] as num?)?.toInt() ?? 0,
      dishTypes: (json['dishTypes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      summary: json['summary'] as String? ?? 'N/A',
      title: json['title'] as String? ?? 'N/A',
      image: json['image'] as String,
      healthScore: (json['healthScore'] as num?)?.toInt() ?? 0,
      extendedIngredients: (json['extendedIngredients'] as List<dynamic>?)
              ?.map((e) => Ingredients.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$RecipeDetailsImplToJson(_$RecipeDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vegan': instance.vegan,
      'vegetarian': instance.vegetarian,
      'dairyFree': instance.dairyFree,
      'glutenFree': instance.glutenFree,
      'preparationMinutes': instance.preparationMinutes,
      'cookingMinutes': instance.cookingMinutes,
      'aggregatedLikes': instance.aggregatedLikes,
      'dishTypes': instance.dishTypes,
      'summary': instance.summary,
      'title': instance.title,
      'image': instance.image,
      'healthScore': instance.healthScore,
      'extendedIngredients': instance.extendedIngredients,
    };

_$IngredientsImpl _$$IngredientsImplFromJson(Map<String, dynamic> json) =>
    _$IngredientsImpl(
      image: json['image'] as String?,
      original: json['original'] as String? ?? 'N/A',
      measures: json['measures'] == null
          ? null
          : Measure.fromJson(json['measures'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IngredientsImplToJson(_$IngredientsImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'original': instance.original,
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
