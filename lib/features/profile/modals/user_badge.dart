import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_badge.g.dart';

@JsonSerializable()
class UserBadge extends Equatable {
  const UserBadge({this.id, this.image, this.name, this.badgesCount});

  factory UserBadge.fromJson(Map<String, dynamic> json) {
    return _$UserBadgeFromJson(json);
  }
  final int? id;
  final String? image;
  final String? name;
  @JsonKey(name: 'badges_count')
  final int? badgesCount;

  Map<String, dynamic> toJson() => _$UserBadgeToJson(this);

  UserBadge copyWith({
    int? id,
    String? image,
    String? name,
    int? badgesCount,
  }) {
    return UserBadge(
      id: id ?? this.id,
      image: image ?? this.image,
      name: name ?? this.name,
      badgesCount: badgesCount ?? this.badgesCount,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, image, name, badgesCount];
}
