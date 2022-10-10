import 'package:equatable/equatable.dart';
import 'package:fitness_tracker_app/features/authentication/modals/user_focus.dart';
import 'package:fitness_tracker_app/features/authentication/modals/user_interest.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data extends Equatable {
  const Data({
    this.email,
    this.id,
    this.dateOfBirth,
    this.company,
    this.height,
    this.weight,
    this.gender,
    this.firstName,
    this.lastName,
    this.country,
    this.isVerify,
    this.userType,
    this.isSearchable,
    this.city,
    this.state,
    this.postalCode,
    this.created,
    this.isAdmin,
    this.lastLogin,
    this.industry,
    this.avatarGender,
    this.avatarSkinTone,
    this.aboutMe,
    this.userFocus,
    this.userInterest,
    this.heightUnit,
    this.weightUnit,
    this.avatarSkinToneHash,
    this.ageGroupId,
    this.profileImage,
    this.theme,
    this.myCubii,
    this.timezone,
    this.userKey,
    this.fitbitScope,
    this.isRemindMe,
    this.cubiiUpdates,
    this.distanceType,
    this.lastLoginOs,
    this.reminderDays,
    this.isFitbitPull,
    this.deviceLanguage,
    this.healthkitScope,
    this.userImageType,
    this.cubiiResistance,
    this.isHealthkitPull,
    this.reminderEndTime,
    this.profileVisibility,
    this.groupNotifications,
    this.reminderStartTime,
    this.userEquipmentType,
    this.generalNotification,
    this.stayConnectedPopup,
    this.isAddInPublicGroup,
    this.reminderTimeInterval,
    this.token,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  final String? email;
  final int? id;
  @JsonKey(name: 'date_of_birth')
  final String? dateOfBirth;
  final String? company;
  final double? height;
  final double? weight;
  final String? gender;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;
  final String? country;
  @JsonKey(name: 'is_verify')
  final bool? isVerify;
  @JsonKey(name: 'user_type')
  final String? userType;
  @JsonKey(name: 'is_searchable')
  final bool? isSearchable;
  final String? city;
  final String? state;
  @JsonKey(name: 'postal_code')
  final String? postalCode;
  final DateTime? created;
  @JsonKey(name: 'is_admin')
  final bool? isAdmin;
  @JsonKey(name: 'last_login')
  final DateTime? lastLogin;
  final dynamic industry;
  @JsonKey(name: 'avatar_gender')
  final String? avatarGender;
  @JsonKey(name: 'avatar_skin_tone')
  final int? avatarSkinTone;
  @JsonKey(name: 'about_me')
  final String? aboutMe;
  @JsonKey(name: 'user_focus')
  final UserFocus? userFocus;
  @JsonKey(name: 'user_interest')
  final List<UserInterest>? userInterest;
  @JsonKey(name: 'height_unit')
  final String? heightUnit;
  @JsonKey(name: 'weight_unit')
  final String? weightUnit;
  @JsonKey(name: 'avatar_skin_tone_hash')
  final String? avatarSkinToneHash;
  @JsonKey(name: 'age_group_id')
  final int? ageGroupId;
  @JsonKey(name: 'profile_image')
  final String? profileImage;
  final String? theme;
  @JsonKey(name: 'my_cubii')
  final int? myCubii;
  final String? timezone;
  @JsonKey(name: 'user_key')
  final String? userKey;
  @JsonKey(name: 'fitbit_scope')
  final String? fitbitScope;
  @JsonKey(name: 'is_remind_me')
  final bool? isRemindMe;
  @JsonKey(name: 'cubii_updates')
  final bool? cubiiUpdates;
  @JsonKey(name: 'distance_type')
  final String? distanceType;
  @JsonKey(name: 'last_login_os')
  final String? lastLoginOs;
  @JsonKey(name: 'reminder_days')
  final List<dynamic>? reminderDays;
  @JsonKey(name: 'is_fitbit_pull')
  final bool? isFitbitPull;
  @JsonKey(name: 'device_language')
  final String? deviceLanguage;
  @JsonKey(name: 'healthkit_scope')
  final dynamic healthkitScope;
  @JsonKey(name: 'user_image_type')
  final String? userImageType;
  @JsonKey(name: 'cubii_resistance')
  final int? cubiiResistance;
  @JsonKey(name: 'is_healthkit_pull')
  final bool? isHealthkitPull;
  @JsonKey(name: 'reminder_end_time')
  final dynamic reminderEndTime;
  @JsonKey(name: 'profile_visibility')
  final bool? profileVisibility;
  @JsonKey(name: 'group_notifications')
  final bool? groupNotifications;
  @JsonKey(name: 'reminder_start_time')
  final dynamic reminderStartTime;
  @JsonKey(name: 'user_equipment_type')
  final String? userEquipmentType;
  @JsonKey(name: 'general_notification')
  final bool? generalNotification;
  @JsonKey(name: 'stay_connected_popup')
  final bool? stayConnectedPopup;
  @JsonKey(name: 'is_add_in_public_group')
  final bool? isAddInPublicGroup;
  @JsonKey(name: 'reminder_time_interval')
  final dynamic? reminderTimeInterval;
  final String? token;

  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    String? email,
    int? id,
    String? dateOfBirth,
    String? company,
    double? height,
    double? weight,
    String? gender,
    String? firstName,
    String? lastName,
    String? country,
    bool? isVerify,
    String? userType,
    bool? isSearchable,
    String? city,
    String? state,
    String? postalCode,
    DateTime? created,
    bool? isAdmin,
    DateTime? lastLogin,
    dynamic industry,
    String? avatarGender,
    int? avatarSkinTone,
    String? aboutMe,
    UserFocus? userFocus,
    List<UserInterest>? userInterest,
    String? heightUnit,
    String? weightUnit,
    String? avatarSkinToneHash,
    int? ageGroupId,
    String? profileImage,
    String? theme,
    int? myCubii,
    String? timezone,
    String? userKey,
    String? fitbitScope,
    bool? isRemindMe,
    bool? cubiiUpdates,
    String? distanceType,
    String? lastLoginOs,
    List<dynamic>? reminderDays,
    bool? isFitbitPull,
    String? deviceLanguage,
    dynamic healthkitScope,
    String? userImageType,
    int? cubiiResistance,
    bool? isHealthkitPull,
    dynamic reminderEndTime,
    bool? profileVisibility,
    bool? groupNotifications,
    dynamic reminderStartTime,
    String? userEquipmentType,
    bool? generalNotification,
    bool? stayConnectedPopup,
    bool? isAddInPublicGroup,
    dynamic reminderTimeInterval,
    String? token,
  }) {
    return Data(
      email: email ?? this.email,
      id: id ?? this.id,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      company: company ?? this.company,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      gender: gender ?? this.gender,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      country: country ?? this.country,
      isVerify: isVerify ?? this.isVerify,
      userType: userType ?? this.userType,
      isSearchable: isSearchable ?? this.isSearchable,
      city: city ?? this.city,
      state: state ?? this.state,
      postalCode: postalCode ?? this.postalCode,
      created: created ?? this.created,
      isAdmin: isAdmin ?? this.isAdmin,
      lastLogin: lastLogin ?? this.lastLogin,
      industry: industry ?? this.industry,
      avatarGender: avatarGender ?? this.avatarGender,
      avatarSkinTone: avatarSkinTone ?? this.avatarSkinTone,
      aboutMe: aboutMe ?? this.aboutMe,
      userFocus: userFocus ?? this.userFocus,
      userInterest: userInterest ?? this.userInterest,
      heightUnit: heightUnit ?? this.heightUnit,
      weightUnit: weightUnit ?? this.weightUnit,
      avatarSkinToneHash: avatarSkinToneHash ?? this.avatarSkinToneHash,
      ageGroupId: ageGroupId ?? this.ageGroupId,
      profileImage: profileImage ?? this.profileImage,
      theme: theme ?? this.theme,
      myCubii: myCubii ?? this.myCubii,
      timezone: timezone ?? this.timezone,
      userKey: userKey ?? this.userKey,
      fitbitScope: fitbitScope ?? this.fitbitScope,
      isRemindMe: isRemindMe ?? this.isRemindMe,
      cubiiUpdates: cubiiUpdates ?? this.cubiiUpdates,
      distanceType: distanceType ?? this.distanceType,
      lastLoginOs: lastLoginOs ?? this.lastLoginOs,
      reminderDays: reminderDays ?? this.reminderDays,
      isFitbitPull: isFitbitPull ?? this.isFitbitPull,
      deviceLanguage: deviceLanguage ?? this.deviceLanguage,
      healthkitScope: healthkitScope ?? this.healthkitScope,
      userImageType: userImageType ?? this.userImageType,
      cubiiResistance: cubiiResistance ?? this.cubiiResistance,
      isHealthkitPull: isHealthkitPull ?? this.isHealthkitPull,
      reminderEndTime: reminderEndTime ?? this.reminderEndTime,
      profileVisibility: profileVisibility ?? this.profileVisibility,
      groupNotifications: groupNotifications ?? this.groupNotifications,
      reminderStartTime: reminderStartTime ?? this.reminderStartTime,
      userEquipmentType: userEquipmentType ?? this.userEquipmentType,
      generalNotification: generalNotification ?? this.generalNotification,
      stayConnectedPopup: stayConnectedPopup ?? this.stayConnectedPopup,
      isAddInPublicGroup: isAddInPublicGroup ?? this.isAddInPublicGroup,
      reminderTimeInterval: reminderTimeInterval ?? this.reminderTimeInterval,
      token: token ?? this.token,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      email,
      id,
      dateOfBirth,
      company,
      height,
      weight,
      gender,
      firstName,
      lastName,
      country,
      isVerify,
      userType,
      isSearchable,
      city,
      state,
      postalCode,
      created,
      isAdmin,
      lastLogin,
      industry,
      avatarGender,
      avatarSkinTone,
      aboutMe,
      userFocus,
      userInterest,
      heightUnit,
      weightUnit,
      avatarSkinToneHash,
      ageGroupId,
      profileImage,
      theme,
      myCubii,
      timezone,
      userKey,
      fitbitScope,
      isRemindMe,
      cubiiUpdates,
      distanceType,
      lastLoginOs,
      reminderDays,
      isFitbitPull,
      deviceLanguage,
      healthkitScope,
      userImageType,
      cubiiResistance,
      isHealthkitPull,
      reminderEndTime,
      profileVisibility,
      groupNotifications,
      reminderStartTime,
      userEquipmentType,
      generalNotification,
      stayConnectedPopup,
      isAddInPublicGroup,
      reminderTimeInterval,
      token,
    ];
  }
}
