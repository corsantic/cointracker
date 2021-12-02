import 'package:cointracker/model/listing/platform.dart';
import 'package:cointracker/model/listing/quote.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(required: true)
  int? id;
  String? name;
  String? symbol;
  String? slug;
  @JsonKey(name: "num_market_pairs")
  int? numMarketPairs;
  @JsonKey(name: "date_added")
  String? dateAdded;
  List<String>? tags;
  @JsonKey(name: "max_supply")
  int? maxSupply;
  @JsonKey(name: "circulating_supply")
  int? circulatingSupply;
  @JsonKey(name: "total_supply")
  double? totalSupply;
  Platform? platform;
  @JsonKey(name: "cmc_rank")
  int? cmcRank;
  @JsonKey(name: "last_updated")
  String? lastUpdated;
  Quote? quote;

  Data(
      {this.id,
      this.name,
      this.symbol,
      this.slug,
      this.numMarketPairs,
      this.dateAdded,
      this.tags,
      this.maxSupply,
      this.circulatingSupply,
      this.totalSupply,
      this.platform,
      this.cmcRank,
      this.lastUpdated,
      this.quote});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
