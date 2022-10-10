import 'package:equatable/equatable.dart';
import 'package:fitness_tracker_app/features/profile/modals/profile_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile_response.g.dart';

@JsonSerializable()
class ProfileResponse extends Equatable {
  const ProfileResponse({this.success, this.message, this.data});

  factory ProfileResponse.fromJson(Map<String, dynamic> json) {
    return _$ProfileResponseFromJson(json);
  }
  final bool? success;
  final String? message;
  final ProfileData? data;

  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);

  ProfileResponse copyWith({
    bool? success,
    String? message,
    ProfileData? data,
  }) {
    return ProfileResponse(
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
