import 'package:equatable/equatable.dart';
import 'package:fitness_tracker_app/features/home/modals/chart_data/ble_data.dart';
import 'package:fitness_tracker_app/features/home/modals/chart_data/manual_data.dart';
import 'package:fitness_tracker_app/features/home/modals/chart_data/tm_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'workouts_datum.g.dart';

@JsonSerializable()
class WorkoutsDatum extends Equatable {
  const WorkoutsDatum({
    this.date,
    this.bleData,
    this.manualData,
    this.tmData,
  });

  factory WorkoutsDatum.fromJson(Map<String, dynamic> json) {
    return _$WorkoutsDatumFromJson(json);
  }
  final String? date;
  @JsonKey(name: 'ble_data')
  final BleData? bleData;
  @JsonKey(name: 'manual_data')
  final ManualData? manualData;
  @JsonKey(name: 'tm_data')
  final TmData? tmData;

  Map<String, dynamic> toJson() => _$WorkoutsDatumToJson(this);

  WorkoutsDatum copyWith({
    String? date,
    BleData? bleData,
    ManualData? manualData,
    TmData? tmData,
  }) {
    return WorkoutsDatum(
      date: date ?? this.date,
      bleData: bleData ?? this.bleData,
      manualData: manualData ?? this.manualData,
      tmData: tmData ?? this.tmData,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [date, bleData, manualData, tmData];
}
