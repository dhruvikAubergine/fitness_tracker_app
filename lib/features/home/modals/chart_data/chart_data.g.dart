// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChartData _$ChartDataFromJson(Map<String, dynamic> json) => ChartData(
      goalsData: json['goals_data'] == null
          ? null
          : GoalsData.fromJson(json['goals_data'] as Map<String, dynamic>),
      total: json['total'] == null
          ? null
          : Total.fromJson(json['total'] as Map<String, dynamic>),
      workoutsData: (json['workouts_data'] as List<dynamic>?)
          ?.map((e) => WorkoutsDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChartDataToJson(ChartData instance) => <String, dynamic>{
      'goals_data': instance.goalsData,
      'total': instance.total,
      'workouts_data': instance.workoutsData,
    };
