import 'package:json_annotation/json_annotation.dart';

part 'platform.g.dart';

@JsonSerializable()
class Platform {
  int? id;
  String? name;
  String? symbol;
  String? slug;
  String? tokenAddress;

  Platform({this.id, this.name, this.symbol, this.slug, this.tokenAddress});

  factory Platform.fromJson(Map<String, dynamic> json) =>
      _$PlatformFromJson(json);

  Map<String, dynamic> toJson() => _$PlatformToJson(this);
}
