import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fitness_tracker_app/features/home/modals/chart_data/chart_data.dart';
import 'package:fitness_tracker_app/services/app_api_service.dart';

part 'chart_details_state.dart';

/// Provides a method to get activity chat data.
class ChartDetailsCubit extends Cubit<ChartDetailsState> {
  ChartDetailsCubit() : super(ChartDetailsInitialState());

  Future<void> getChartDetails({
    required String startDate,
    required String endDate,
  }) async {
    try {
      emit(ChartDetailsloadingState());
      final response = await AppApiService.instance
          .getChartDetails(startDate: startDate, endDate: endDate);
      if (response.success ?? false) {
        final chartDate = response.data;
        if (chartDate != null) {
          emit(ChartDetailsLoadedState(chartResponse: chartDate));
        }
      } else {
        emit(ChartDetailsErrorState(message: response.message!));
      }
    } on SocketException catch (e) {
      log(e.toString());
      emit(
        const ChartDetailsErrorState(
          message: 'Please check your internet connection and try again',
        ),
      );
    } catch (e) {
      log(e.toString());
      emit(
        const ChartDetailsErrorState(
          message: 'Something went wrong, please try again later',
        ),
      );
    }
  }
}
