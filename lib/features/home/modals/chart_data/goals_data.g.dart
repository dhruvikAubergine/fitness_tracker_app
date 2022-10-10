// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goals_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoalsData _$GoalsDataFromJson(Map<String, dynamic> json) => GoalsData(
      rotations: (json['rotations'] as num?)?.toDouble(),
      calories: (json['calories'] as num?)?.toDouble(),
      distance: (json['distance'] as num?)?.toDouble(),
      duration: (json['duration'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$GoalsDataToJson(GoalsData instance) => <String, dynamic>{
      'rotations': instance.rotations,
      'calories': instance.calories,
      'distance': instance.distance,
      'duration': instance.duration,
    };
