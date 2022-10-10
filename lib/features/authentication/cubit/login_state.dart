part of 'login_cubit.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitialState extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoginSuccessState extends LoginState {
  const LoginSuccessState({required this.message});
  final String message;

  @override
  List<Object> get props => [message];
}

class LoginEmptyState extends LoginState {
  const LoginEmptyState({required this.message});
  final String message;

  @override
  List<Object> get props => [message];
}

class LoginErrorState extends LoginState {
  const LoginErrorState({required this.message});
  final String message;

  @override
  List<Object> get props => [message];
}
