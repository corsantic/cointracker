import 'package:json_annotation/json_annotation.dart';

part 'status.g.dart';

@JsonSerializable()
class Status {
  String? timestamp;
  int? errorCode;
  String? errorMessage;
  int? elapsed;
  int? creditCount;
  String? notice;
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
