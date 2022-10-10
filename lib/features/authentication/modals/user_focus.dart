import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_focus.g.dart';

@JsonSerializable()
class UserFocus extends Equatable {
  const UserFocus({this.id, this.focusName});

  factory UserFocus.fromJson(Map<String, dynamic> json) {
    return _$UserFocusFromJson(json);
  }
  final int? id;
  @JsonKey(name: 'focus_name')
  final String? focusName;

  Map<String, dynamic> toJson() => _$UserFocusToJson(this);

  UserFocus copyWith({
    int? id,
    String? focusName,
  }) {
    return UserFocus(
      id: id ?? this.id,
      focusName: focusName ?? this.focusName,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, focusName];
}
