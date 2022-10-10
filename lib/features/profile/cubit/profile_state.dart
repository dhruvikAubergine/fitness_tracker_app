part of 'profile_cubit.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

class ProfileInitialState extends ProfileState {}

class ProfileLoadingState extends ProfileState {}

class ProfileLoadedState extends ProfileState {
  const ProfileLoadedState({required this.profileData});
  final ProfileData profileData;

  @override
  List<Object> get props => [profileData];
}

class ProfileErrorState extends ProfileState {
  const ProfileErrorState({required this.message});
  final String message;

  @override
  List<Object> get props => [message];
}
