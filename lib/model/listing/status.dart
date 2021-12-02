import 'package:json_annotation/json_annotation.dart';

part 'status.g.dart';

@JsonSerializable()
class Status {
  String? timestamp;
  @JsonKey(name: "error_code")
  int? errorCode;
  @JsonKey(name: "error_message")
  String? errorMessage;
  int? elapsed;
  @JsonKey(name: "credit_count")
  int? creditCount;
  String? notice;
  @JsonKey(name: "total_count")
  int? totalCount;

  Status(
      {this.timestamp,
      this.errorCode,
      this.errorMessage,
      this.elapsed,
      this.creditCount,
      this.notice,
      this.totalCount});

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  Map<String, dynamic> toJson() => _$StatusToJson(this);
}
