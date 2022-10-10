// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_log_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivityLogResponse _$ActivityLogResponseFromJson(Map<String, dynamic> json) =>
    ActivityLogResponse(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ActivityLogData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ActivityLogResponseToJson(
        ActivityLogResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };
