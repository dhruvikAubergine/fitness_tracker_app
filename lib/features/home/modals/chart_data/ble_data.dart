import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ble_data.g.dart';

@JsonSerializable()
class BleData extends Equatable {
  const BleData({
    this.rotations,
    this.calories,
    this.distance,
    this.duration,
    this.speed,
  });

  factory BleData.fromJson(Map<String, dynamic> json) {
    return _$BleDataFromJson(json);
  }
  final int? rotations;
  final double? calories;
  final double? distance;
  final int? duration;
  final double? speed;

  Map<String, dynamic> toJson() => _$BleDataToJson(this);

  BleData copyWith({
    int? rotations,
    double? calories,
    double? distance,
    int? duration,
    double? speed,
  }) {
    return BleData(
      rotations: rotations ?? this.rotations,
      calories: calories ?? this.calories,
      distance: distance ?? this.distance,
      duration: duration ?? this.duration,
      speed: speed ?? this.speed,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      rotations,
      calories,
      distance,
      duration,
      speed,
    ];
  }
}
