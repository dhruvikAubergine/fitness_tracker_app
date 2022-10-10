// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workouts_datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkoutsDatum _$WorkoutsDatumFromJson(Map<String, dynamic> json) =>
    WorkoutsDatum(
      date: json['date'] as String?,
      bleData: json['ble_data'] == null
          ? null
          : BleData.fromJson(json['ble_data'] as Map<String, dynamic>),
      manualData: json['manual_data'] == null
          ? null
          : ManualData.fromJson(json['manual_data'] as Map<String, dynamic>),
      tmData: json['tm_data'] == null
          ? null
          : TmData.fromJson(json['tm_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WorkoutsDatumToJson(WorkoutsDatum instance) =>
    <String, dynamic>{
      'date': instance.date,
      'ble_data': instance.bleData,
      'manual_data': instance.manualData,
      'tm_data': instance.tmData,
    };
