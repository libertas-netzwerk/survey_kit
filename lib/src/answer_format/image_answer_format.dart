import 'package:json_annotation/json_annotation.dart';
import 'package:survey_kit/src/answer_format/answer_format.dart';

part 'image_answer_format.g.dart';

@JsonSerializable()
class ImageAnswerFormat implements AnswerFormat {
  final int? maxLines;
  @JsonKey(defaultValue: '')
  final String hint;

  /// Regular expression by which the text gets validated
  ///  e.g '^(?!\s*$).+' checks if the entered text is empty
  final String? validationRegEx;

  const ImageAnswerFormat({
    this.maxLines,
    this.hint = '',
    this.validationRegEx,
  }) : super();

  factory ImageAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$ImageAnswerFormatFromJson(json);
  Map<String, dynamic> toJson() => _$ImageAnswerFormatToJson(this);
}
