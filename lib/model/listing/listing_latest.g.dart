// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_latest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListingLatest _$ListingLatestFromJson(Map<String, dynamic> json) =>
    ListingLatest(
      status: Status.fromJson(json['status'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListingLatestToJson(ListingLatest instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
