// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChartResponse _$ChartResponseFromJson(Map<String, dynamic> json) =>
    ChartResponse(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ChartData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChartResponseToJson(ChartResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };
