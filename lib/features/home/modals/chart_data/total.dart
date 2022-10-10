import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'total.g.dart';

@JsonSerializable()
class Total extends Equatable {
  const Total({
    this.totalRotations,
    this.totalCalories,
    this.totalDistance,
    this.totalDuration,
    this.totalSpeed,
  });

  factory Total.fromJson(Map<String, dynamic> json) => _$TotalFromJson(json);
  @JsonKey(name: 'total_rotations')
  final int? totalRotations;
  @JsonKey(name: 'total_calories')
  final double? totalCalories;
  @JsonKey(name: 'total_distance')
  final double? totalDistance;
  @JsonKey(name: 'total_duration')
  final int? totalDuration;
  @JsonKey(name: 'total_speed')
  final double? totalSpeed;

  Map<String, dynamic> toJson() => _$TotalToJson(this);

  Total copyWith({
    int? totalRotations,
    double? totalCalories,
    double? totalDistance,
    int? totalDuration,
    double? totalSpeed,
  }) {
    return Total(
      totalRotations: totalRotations ?? this.totalRotations,
      totalCalories: totalCalories ?? this.totalCalories,
      totalDistance: totalDistance ?? this.totalDistance,
      totalDuration: totalDuration ?? this.totalDuration,
      totalSpeed: totalSpeed ?? this.totalSpeed,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      totalRotations,
      totalCalories,
      totalDistance,
      totalDuration,
      totalSpeed,
    ];
  }
}
