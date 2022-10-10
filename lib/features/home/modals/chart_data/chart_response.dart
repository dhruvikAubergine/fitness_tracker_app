import 'package:equatable/equatable.dart';
import 'package:fitness_tracker_app/features/home/modals/chart_data/chart_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chart_response.g.dart';

@JsonSerializable()
class ChartResponse extends Equatable {
  const ChartResponse({this.success, this.message, this.data});

  factory ChartResponse.fromJson(Map<String, dynamic> json) {
    return _$ChartResponseFromJson(json);
  }
  final bool? success;
  final String? message;
  final ChartData? data;

  Map<String, dynamic> toJson() => _$ChartResponseToJson(this);

  ChartResponse copyWith({
    bool? success,
    String? message,
    ChartData? data,
  }) {
    return ChartResponse(
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
