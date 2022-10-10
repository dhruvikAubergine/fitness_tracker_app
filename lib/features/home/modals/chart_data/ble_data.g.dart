// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ble_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BleData _$BleDataFromJson(Map<String, dynamic> json) => BleData(
      rotations: json['rotations'] as int?,
      calories: (json['calories'] as num?)?.toDouble(),
      distance: (json['distance'] as num?)?.toDouble(),
      duration: json['duration'] as int?,
      speed: (json['speed'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$BleDataToJson(BleData instance) => <String, dynamic>{
      'rotations': instance.rotations,
      'calories': instance.calories,
      'distance': instance.distance,
      'duration': instance.duration,
      'speed': instance.speed,
    };
