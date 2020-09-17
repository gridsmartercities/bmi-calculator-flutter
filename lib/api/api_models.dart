import 'package:json_annotation/json_annotation.dart';

part 'api_models.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ApiBmiResult {
  final double bmi;

  ApiBmiResult(this.bmi);

  factory ApiBmiResult.fromJson(Map<String, dynamic> json) =>
      _$ApiBmiResultFromJson(json);
}