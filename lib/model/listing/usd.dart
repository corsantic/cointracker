import 'package:json_annotation/json_annotation.dart';

part 'usd.g.dart';

@JsonSerializable()
class USD {
  double? price;
  double? volume24h;
  int? volumeChange24h;
  double? percentChange1h;
  int? percentChange24h;
  int? percentChange7d;
  int? percentChange30d;
  int? percentChange60d;
  int? percentChange90d;
  int? marketCap;
  int? marketCapDominance;
  double? fullyDilutedMarketCap;
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
