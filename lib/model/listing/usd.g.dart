// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usd.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

USD _$USDFromJson(Map<String, dynamic> json) => USD(
      price: (json['price'] as num?)?.toDouble(),
      volume24h: (json['volume24h'] as num?)?.toDouble(),
      volumeChange24h: json['volumeChange24h'] as int?,
      percentChange1h: (json['percentChange1h'] as num?)?.toDouble(),
      percentChange24h: json['percentChange24h'] as int?,
      percentChange7d: json['percentChange7d'] as int?,
      percentChange30d: json['percentChange30d'] as int?,
      percentChange60d: json['percentChange60d'] as int?,
      percentChange90d: json['percentChange90d'] as int?,
      marketCap: json['marketCap'] as int?,
      marketCapDominance: json['marketCapDominance'] as int?,
      fullyDilutedMarketCap:
          (json['fullyDilutedMarketCap'] as num?)?.toDouble(),
      lastUpdated: json['lastUpdated'] as String?,
    );

Map<String, dynamic> _$USDToJson(USD instance) => <String, dynamic>{
      'price': instance.price,
      'volume24h': instance.volume24h,
      'volumeChange24h': instance.volumeChange24h,
      'percentChange1h': instance.percentChange1h,
      'percentChange24h': instance.percentChange24h,
      'percentChange7d': instance.percentChange7d,
      'percentChange30d': instance.percentChange30d,
      'percentChange60d': instance.percentChange60d,
      'percentChange90d': instance.percentChange90d,
      'marketCap': instance.marketCap,
      'marketCapDominance': instance.marketCapDominance,
      'fullyDilutedMarketCap': instance.fullyDilutedMarketCap,
      'lastUpdated': instance.lastUpdated,
    };
