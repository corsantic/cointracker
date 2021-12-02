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
  int? numMarketPairs;
  String? dateAdded;
  List<String>? tags;
  String? maxSupply;
  int? circulatingSupply;
  int? totalSupply;
  Platform? platform;
  int? cmcRank;
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
