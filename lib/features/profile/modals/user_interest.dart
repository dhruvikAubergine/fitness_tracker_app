import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_interest.g.dart';

@JsonSerializable()
class UserInterest extends Equatable {
  const UserInterest({this.id, this.interestName});

  factory UserInterest.fromJson(Map<String, dynamic> json) {
    return _$UserInterestFromJson(json);
  }
  final int? id;
  @JsonKey(name: 'interest_name')
  final String? interestName;

  Map<String, dynamic> toJson() => _$UserInterestToJson(this);

  UserInterest copyWith({
    int? id,
    String? interestName,
  }) {
    return UserInterest(
      id: id ?? this.id,
      interestName: interestName ?? this.interestName,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, interestName];
}
