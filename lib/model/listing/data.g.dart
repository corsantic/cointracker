// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id'],
  );
  return Data(
    id: json['id'] as int?,
    name: json['name'] as String?,
    symbol: json['symbol'] as String?,
    slug: json['slug'] as String?,
    numMarketPairs: json['num_market_pairs'] as int?,
    dateAdded: json['date_added'] as String?,
    tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    maxSupply: json['max_supply'] as int?,
    circulatingSupply: json['circulating_supply'] as int?,
    totalSupply: json['total_supply'] as double?,
    platform: json['platform'] == null
        ? null
        : Platform.fromJson(json['platform'] as Map<String, dynamic>),
    cmcRank: json['cmc_rank'] as int?,
    lastUpdated: json['last_updated'] as String?,
    quote: json['quote'] == null
        ? null
        : Quote.fromJson(json['quote'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'slug': instance.slug,
      'num_market_pairs': instance.numMarketPairs,
      'date_added': instance.dateAdded,
      'tags': instance.tags,
      'max_supply': instance.maxSupply,
      'circulating_supply': instance.circulatingSupply,
      'total_supply': instance.totalSupply,
      'platform': instance.platform,
      'cmc_rank': instance.cmcRank,
      'last_updated': instance.lastUpdated,
      'quote': instance.quote,
    };
