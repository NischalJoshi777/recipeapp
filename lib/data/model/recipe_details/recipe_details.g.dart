// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeDetailsImpl _$$RecipeDetailsImplFromJson(Map<String, dynamic> json) =>
    _$RecipeDetailsImpl(
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
      summary: json['summary'] as String,
      title: json['title'] as String,
      healthScore: (json['healthScore'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$RecipeDetailsImplToJson(_$RecipeDetailsImpl instance) =>
    <String, dynamic>{
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
      'healthScore': instance.healthScore,
    };

_$IngredientsImpl _$$IngredientsImplFromJson(Map<String, dynamic> json) =>
    _$IngredientsImpl(
      image: json['image'] as String,
      original: json['original'] as String,
    );

Map<String, dynamic> _$$IngredientsImplToJson(_$IngredientsImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'original': instance.original,
    };
