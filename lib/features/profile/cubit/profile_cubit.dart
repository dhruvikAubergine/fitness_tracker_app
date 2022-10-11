import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fitness_tracker_app/features/profile/modals/profile_data.dart';
import 'package:fitness_tracker_app/services/app_api_service.dart';

part 'profile_state.dart';

/// Provides a method to get user profile data.
class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitialState());
  Future<void> getUserProfile() async {
    try {
      emit(ProfileLoadingState());
      final response = await AppApiService.instance.getUserProfile();
      if (response.success ?? false) {
        final profileData = response.data;
        if (profileData != null) {
          emit(ProfileLoadedState(profileData: profileData));
        }
      } else {
        emit(ProfileErrorState(message: response.message!));
      }
    } on SocketException catch (e) {
      log(e.toString());
      emit(
        const ProfileErrorState(
          message: 'Please check your internet connection and try again',
        ),
      );
    } catch (e) {
      log(e.toString());
      emit(
        const ProfileErrorState(
          message: 'Something went wrong, please try again later',
        ),
      );
    }
  }
}
