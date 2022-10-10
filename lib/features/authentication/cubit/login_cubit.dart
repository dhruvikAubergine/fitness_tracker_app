import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fitness_tracker_app/services/app_api_service.dart';
import 'package:fitness_tracker_app/services/app_service.dart';

part 'login_state.dart';

/// Provides methods to manage login process.
class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());

  Future<void> logIn({required String email, required String password}) async {
    try {
      emit(LoginLoadingState());
      final response =
          await AppApiService.instance.login(email: email, password: password);
      if (response.success ?? false) {
        final appService = AppService.instance
          ..accessToken = response.data?.token ?? ''
          ..userId = response.data?.id ?? 0;
        // fetch user profile.
        emit(LoginSuccessState(message: response.message!));
      } else {
        emit(LoginErrorState(message: response.message!));
      }
    } on SocketException catch (e) {
      log(e.toString());
      emit(
        const LoginErrorState(
          message: 'Please check your internet connection and try again',
        ),
      );
    } catch (e) {
      log(e.toString());
      emit(
        const LoginErrorState(
          message: 'Something went wrong, please try again later',
        ),
      );
    }
  }
}
