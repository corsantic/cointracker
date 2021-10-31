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
    numMarketPairs: json['numMarketPairs'] as int?,
    dateAdded: json['dateAdded'] as String?,
    tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    maxSupply: json['maxSupply'] as String?,
    circulatingSupply: json['circulatingSupply'] as int?,
    totalSupply: json['totalSupply'] as int?,
    platform: json['platform'] == null
        ? null
        : Platform.fromJson(json['platform'] as Map<String, dynamic>),
    cmcRank: json['cmcRank'] as int?,
    lastUpdated: json['lastUpdated'] as String?,
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
      'numMarketPairs': instance.numMarketPairs,
      'dateAdded': instance.dateAdded,
      'tags': instance.tags,
      'maxSupply': instance.maxSupply,
      'circulatingSupply': instance.circulatingSupply,
      'totalSupply': instance.totalSupply,
      'platform': instance.platform,
      'cmcRank': instance.cmcRank,
      'lastUpdated': instance.lastUpdated,
      'quote': instance.quote,
    };
