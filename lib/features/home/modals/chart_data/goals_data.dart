import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'goals_data.g.dart';

@JsonSerializable()
class GoalsData extends Equatable {
  const GoalsData({
    this.rotations,
    this.calories,
    this.distance,
    this.duration,
  });

  factory GoalsData.fromJson(Map<String, dynamic> json) {
    return _$GoalsDataFromJson(json);
  }
  final double? rotations;
  final double? calories;
  final double? distance;
  final double? duration;

  Map<String, dynamic> toJson() => _$GoalsDataToJson(this);

  GoalsData copyWith({
    double? rotations,
    double? calories,
    double? distance,
    double? duration,
  }) {
    return GoalsData(
      rotations: rotations ?? this.rotations,
      calories: calories ?? this.calories,
      distance: distance ?? this.distance,
      duration: duration ?? this.duration,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [rotations, calories, distance, duration];
}
