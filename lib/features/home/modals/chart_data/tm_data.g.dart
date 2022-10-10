// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tm_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TmData _$TmDataFromJson(Map<String, dynamic> json) => TmData(
      rotations: json['rotations'] as int?,
      calories: json['calories'] as int?,
      distance: json['distance'] as int?,
      duration: json['duration'] as int?,
      speed: json['speed'] as int?,
    );

Map<String, dynamic> _$TmDataToJson(TmData instance) => <String, dynamic>{
      'rotations': instance.rotations,
      'calories': instance.calories,
      'distance': instance.distance,
      'duration': instance.duration,
      'speed': instance.speed,
    };
