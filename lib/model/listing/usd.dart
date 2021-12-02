import 'package:json_annotation/json_annotation.dart';

part 'usd.g.dart';

@JsonSerializable()
class USD {
  double? price;
  @JsonKey(name: "volume_24h")
  double? volume24h;
  @JsonKey(name: "volume_change24h")
  int? volumeChange24h;
  @JsonKey(name: "percent_change1h")
  double? percentChange1h;
  @JsonKey(name: "percent_change24h")
  int? percentChange24h;
  @JsonKey(name: "percent_change7d")
  int? percentChange7d;
  @JsonKey(name: "percent_change30d")
  int? percentChange30d;
  @JsonKey(name: "percent_change60d")
  int? percentChange60d;
  @JsonKey(name: "percent_change90d")
  int? percentChange90d;
  @JsonKey(name: "market_cap")
  int? marketCap;
  @JsonKey(name: "market_cap_dominance")
  int? marketCapDominance;
  @JsonKey(name: "fully_diluted_market_cap")
  double? fullyDilutedMarketCap;
  @JsonKey(name: "last_updated")
  String? lastUpdated;

  USD(
      {this.price,
      this.volume24h,
      this.volumeChange24h,
      this.percentChange1h,
      this.percentChange24h,
      this.percentChange7d,
      this.percentChange30d,
      this.percentChange60d,
      this.percentChange90d,
      this.marketCap,
      this.marketCapDominance,
      this.fullyDilutedMarketCap,
      this.lastUpdated});

  factory USD.fromJson(Map<String, dynamic> json) => _$USDFromJson(json);

  Map<String, dynamic> toJson() => _$USDToJson(this);
}
