import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fitness_tracker_app/features/home/modals/activity_log_data/activity_log_data.dart';
import 'package:fitness_tracker_app/services/app_api_service.dart';

part 'activity_log_state.dart';

/// Provides a method to get activity log data.
class ActivityLogCubit extends Cubit<ActivityLogState> {
  ActivityLogCubit() : super(ActivityLogInitialState());
  Future<void> getActivityLog({
    required String startDate,
    required String endDate,
  }) async {
    try {
      emit(ActivityLogLoadingState());
      final response = await AppApiService.instance
          .getActivityLog(startDate: startDate, endDate: endDate);
      if (response.success ?? false) {
        final activityLogDate = response.data;
        if (activityLogDate != null) {
          emit(ActivityLogLoadedState(activityLogData: activityLogDate));
        }
      } else {
        emit(ActivityLogErrorState(message: response.message!));
      }
    } on SocketException catch (e) {
      log(e.toString());
      emit(
        const ActivityLogErrorState(
          message: 'Please check your internet connection and try again',
        ),
      );
    } catch (e) {
      log(e.toString());
      emit(
        const ActivityLogErrorState(
          message: 'Something went wrong, please try again later',
        ),
      );
    }
  }
}
