// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Quote _$QuoteFromJson(Map<String, dynamic> json) => Quote(
      uSD: json['uSD'] == null
          ? null
          : USD.fromJson(json['uSD'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QuoteToJson(Quote instance) => <String, dynamic>{
      'uSD': instance.uSD,
    };
