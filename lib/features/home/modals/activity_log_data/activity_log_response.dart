import 'package:equatable/equatable.dart';
import 'package:fitness_tracker_app/features/home/modals/activity_log_data/activity_log_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'activity_log_response.g.dart';

@JsonSerializable()
class ActivityLogResponse extends Equatable {
  const ActivityLogResponse({this.success, this.message, this.data});

  factory ActivityLogResponse.fromJson(Map<String, dynamic> json) {
    return _$ActivityLogResponseFromJson(json);
  }
  final bool? success;
  final String? message;
  final List<ActivityLogData>? data;

  Map<String, dynamic> toJson() => _$ActivityLogResponseToJson(this);

  ActivityLogResponse copyWith({
    bool? success,
    String? message,
    List<ActivityLogData>? data,
  }) {
    return ActivityLogResponse(
      success: success ?? this.success,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [success, message, data];
}
