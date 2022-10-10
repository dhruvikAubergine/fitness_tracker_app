// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manual_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManualData _$ManualDataFromJson(Map<String, dynamic> json) => ManualData(
      rotations: json['rotations'] as int?,
      calories: (json['calories'] as num?)?.toDouble(),
      distance: (json['distance'] as num?)?.toDouble(),
      duration: json['duration'] as int?,
    );

Map<String, dynamic> _$ManualDataToJson(ManualData instance) =>
    <String, dynamic>{
      'rotations': instance.rotations,
      'calories': instance.calories,
      'distance': instance.distance,
      'duration': instance.duration,
    };
