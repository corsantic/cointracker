// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Status _$StatusFromJson(Map<String, dynamic> json) => Status(
      timestamp: json['timestamp'] as String?,
      errorCode: json['errorCode'] as int?,
      errorMessage: json['errorMessage'] as String?,
      elapsed: json['elapsed'] as int?,
      creditCount: json['creditCount'] as int?,
      notice: json['notice'] as String?,
      totalCount: json['totalCount'] as int?,
    );

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'timestamp': instance.timestamp,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'elapsed': instance.elapsed,
      'creditCount': instance.creditCount,
      'notice': instance.notice,
      'totalCount': instance.totalCount,
    };
