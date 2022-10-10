// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_log_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivityLogData _$ActivityLogDataFromJson(Map<String, dynamic> json) =>
    ActivityLogData(
      date: json['date'] as String?,
      rotations: json['rotations'] as int?,
      calories: (json['calories'] as num?)?.toDouble(),
      distance: (json['distance'] as num?)?.toDouble(),
      duration: json['duration'] as int?,
      speed: (json['speed'] as num?)?.toDouble(),
      modelType: json['model_type'] as int?,
      caloriesGoalAchievedCount: json['calories_goal_achieved_count'] as int?,
      rotationsGoalAchievedCount: json['rotations_goal_achieved_count'] as int?,
      distanceGoalAchievedCount: json['distance_goal_achieved_count'] as int?,
      durationGoalAchievedCount: json['duration_goal_achieved_count'] as int?,
    );

Map<String, dynamic> _$ActivityLogDataToJson(ActivityLogData instance) =>
    <String, dynamic>{
      'date': instance.date,
      'rotations': instance.rotations,
      'calories': instance.calories,
      'distance': instance.distance,
      'duration': instance.duration,
      'speed': instance.speed,
      'model_type': instance.modelType,
      'calories_goal_achieved_count': instance.caloriesGoalAchievedCount,
      'rotations_goal_achieved_count': instance.rotationsGoalAchievedCount,
      'distance_goal_achieved_count': instance.distanceGoalAchievedCount,
      'duration_goal_achieved_count': instance.durationGoalAchievedCount,
    };
