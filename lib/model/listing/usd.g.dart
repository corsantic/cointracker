// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usd.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

USD _$USDFromJson(Map<String, dynamic> json) => USD(
      price: (json['price'] as num?)?.toDouble(),
      volume24h: (json['volume_24h'] as num?)?.toDouble(),
      volumeChange24h: json['volume_change24h'] as int?,
      percentChange1h: (json['percent_change1h'] as num?)?.toDouble(),
      percentChange24h: json['percent_change24h'] as int?,
      percentChange7d: json['percent_change7d'] as int?,
      percentChange30d: json['percent_change30d'] as int?,
      percentChange60d: json['percent_change60d'] as int?,
      percentChange90d: json['percent_change90d'] as int?,
      marketCap: json['market_cap'] as int?,
      marketCapDominance: json['market_cap_dominance'] as int?,
      fullyDilutedMarketCap:
          (json['fully_diluted_market_cap'] as num?)?.toDouble(),
      lastUpdated: json['last_updated'] as String?,
    );

Map<String, dynamic> _$USDToJson(USD instance) => <String, dynamic>{
      'price': instance.price,
      'volume_24h': instance.volume24h,
      'volume_change24h': instance.volumeChange24h,
      'percent_change1h': instance.percentChange1h,
      'percent_change24h': instance.percentChange24h,
      'percent_change7d': instance.percentChange7d,
      'percent_change30d': instance.percentChange30d,
      'percent_change60d': instance.percentChange60d,
      'percent_change90d': instance.percentChange90d,
      'market_cap': instance.marketCap,
      'market_cap_dominance': instance.marketCapDominance,
      'fully_diluted_market_cap': instance.fullyDilutedMarketCap,
      'last_updated': instance.lastUpdated,
    };
