import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'activity_log_data.g.dart';

@JsonSerializable()
class ActivityLogData extends Equatable {
  const ActivityLogData({
    this.date,
    this.rotations,
    this.calories,
    this.distance,
    this.duration,
    this.speed,
    this.modelType,
    this.caloriesGoalAchievedCount,
    this.rotationsGoalAchievedCount,
    this.distanceGoalAchievedCount,
    this.durationGoalAchievedCount,
  });

  factory ActivityLogData.fromJson(Map<String, dynamic> json) =>
      _$ActivityLogDataFromJson(json);
  final String? date;
  final int? rotations;
  final double? calories;
  final double? distance;
  final int? duration;
  final double? speed;
  @JsonKey(name: 'model_type')
  final int? modelType;
  @JsonKey(name: 'calories_goal_achieved_count')
  final int? caloriesGoalAchievedCount;
  @JsonKey(name: 'rotations_goal_achieved_count')
  final int? rotationsGoalAchievedCount;
  @JsonKey(name: 'distance_goal_achieved_count')
  final int? distanceGoalAchievedCount;
  @JsonKey(name: 'duration_goal_achieved_count')
  final int? durationGoalAchievedCount;

  Map<String, dynamic> toJson() => _$ActivityLogDataToJson(this);

  ActivityLogData copyWith({
    String? date,
    int? rotations,
    double? calories,
    double? distance,
    int? duration,
    double? speed,
    int? modelType,
    int? caloriesGoalAchievedCount,
    int? rotationsGoalAchievedCount,
    int? distanceGoalAchievedCount,
    int? durationGoalAchievedCount,
  }) {
    return ActivityLogData(
      date: date ?? this.date,
      rotations: rotations ?? this.rotations,
      calories: calories ?? this.calories,
      distance: distance ?? this.distance,
      duration: duration ?? this.duration,
      speed: speed ?? this.speed,
      modelType: modelType ?? this.modelType,
      caloriesGoalAchievedCount:
          caloriesGoalAchievedCount ?? this.caloriesGoalAchievedCount,
      rotationsGoalAchievedCount:
          rotationsGoalAchievedCount ?? this.rotationsGoalAchievedCount,
      distanceGoalAchievedCount:
          distanceGoalAchievedCount ?? this.distanceGoalAchievedCount,
      durationGoalAchievedCount:
          durationGoalAchievedCount ?? this.durationGoalAchievedCount,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      date,
      rotations,
      calories,
      distance,
      duration,
      speed,
      modelType,
      caloriesGoalAchievedCount,
      rotationsGoalAchievedCount,
      distanceGoalAchievedCount,
      durationGoalAchievedCount,
    ];
  }
}
