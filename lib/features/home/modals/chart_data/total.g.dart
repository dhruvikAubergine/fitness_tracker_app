// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Total _$TotalFromJson(Map<String, dynamic> json) => Total(
      totalRotations: json['total_rotations'] as int?,
      totalCalories: (json['total_calories'] as num?)?.toDouble(),
      totalDistance: (json['total_distance'] as num?)?.toDouble(),
      totalDuration: json['total_duration'] as int?,
      totalSpeed: (json['total_speed'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TotalToJson(Total instance) => <String, dynamic>{
      'total_rotations': instance.totalRotations,
      'total_calories': instance.totalCalories,
      'total_distance': instance.totalDistance,
      'total_duration': instance.totalDuration,
      'total_speed': instance.totalSpeed,
    };
