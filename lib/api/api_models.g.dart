// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiBmiResult _$ApiBmiResultFromJson(Map<String, dynamic> json) {
  return ApiBmiResult(
    (json['bmi'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$ApiBmiResultToJson(ApiBmiResult instance) =>
    <String, dynamic>{
      'bmi': instance.bmi,
    };
