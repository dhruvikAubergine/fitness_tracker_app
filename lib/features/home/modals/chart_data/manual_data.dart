import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'manual_data.g.dart';

@JsonSerializable()
class ManualData extends Equatable {
  const ManualData({
    this.rotations,
    this.calories,
    this.distance,
    this.duration,
  });

  factory ManualData.fromJson(Map<String, dynamic> json) {
    return _$ManualDataFromJson(json);
  }
  final int? rotations;
  final double? calories;
  final double? distance;
  final int? duration;

  Map<String, dynamic> toJson() => _$ManualDataToJson(this);

  ManualData copyWith({
    int? rotations,
    double? calories,
    double? distance,
    int? duration,
  }) {
    return ManualData(
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
