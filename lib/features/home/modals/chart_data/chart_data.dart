import 'package:equatable/equatable.dart';
import 'package:fitness_tracker_app/features/home/modals/chart_data/goals_data.dart';
import 'package:fitness_tracker_app/features/home/modals/chart_data/total.dart';
import 'package:fitness_tracker_app/features/home/modals/chart_data/workouts_datum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chart_data.g.dart';

@JsonSerializable()
class ChartData extends Equatable {
  const ChartData({this.goalsData, this.total, this.workoutsData});

  factory ChartData.fromJson(Map<String, dynamic> json) =>
      _$ChartDataFromJson(json);
  @JsonKey(name: 'goals_data')
  final GoalsData? goalsData;
  final Total? total;
  @JsonKey(name: 'workouts_data')
  final List<WorkoutsDatum>? workoutsData;

  Map<String, dynamic> toJson() => _$ChartDataToJson(this);

  ChartData copyWith({
    GoalsData? goalsData,
    Total? total,
    List<WorkoutsDatum>? workoutsData,
  }) {
    return ChartData(
      goalsData: goalsData ?? this.goalsData,
      total: total ?? this.total,
      workoutsData: workoutsData ?? this.workoutsData,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [goalsData, total, workoutsData];
}
