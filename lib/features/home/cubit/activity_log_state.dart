part of 'activity_log_cubit.dart';

abstract class ActivityLogState extends Equatable {
  const ActivityLogState();

  @override
  List<Object> get props => [];
}

class ActivityLogInitialState extends ActivityLogState {}

class ActivityLogLoadingState extends ActivityLogState {}

class ActivityLogLoadedState extends ActivityLogState {
  const ActivityLogLoadedState({required this.activityLogData});
  final List<ActivityLogData> activityLogData;

  @override
  List<Object> get props => [activityLogData];
}

class ActivityLogEmptyState extends ActivityLogState {
  const ActivityLogEmptyState({required this.message});
  final String message;

  @override
  List<Object> get props => [message];
}

class ActivityLogErrorState extends ActivityLogState {
  const ActivityLogErrorState({required this.message});
  final String message;

  @override
  List<Object> get props => [message];
}
