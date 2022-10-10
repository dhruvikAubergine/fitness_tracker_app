import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tm_data.g.dart';

@JsonSerializable()
class TmData extends Equatable {
  const TmData({
    this.rotations,
    this.calories,
    this.distance,
    this.duration,
    this.speed,
  });

  factory TmData.fromJson(Map<String, dynamic> json) {
    return _$TmDataFromJson(json);
  }
  final int? rotations;
  final int? calories;
  final int? distance;
  final int? duration;
  final int? speed;

  Map<String, dynamic> toJson() => _$TmDataToJson(this);

  TmData copyWith({
    int? rotations,
    int? calories,
    int? distance,
    int? duration,
    int? speed,
  }) {
    return TmData(
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
