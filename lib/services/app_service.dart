import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

/// Provides properties for common data management like login session details.
class AppService with ChangeNotifier {
  factory AppService() => _instance;
  AppService._();
  static AppService get instance => _instance;
  static final AppService _instance = AppService._();

  final Box<dynamic> storageBox = Hive.box('App Service Box');
  String? _accessToken;
  int? _userId;

  int get userId => _userId ?? 0;

  set userId(int userId) {
    _userId = userId;
    storageBox.put('user_id', userId);
  }

  String get accessToken => 'Token $_accessToken';
  set accessToken(String token) {
    assert(token != '', "Token can't be empty");
    _accessToken = token;
    storageBox.put('access_token', token);
  }

  bool get isLoggedIn => _accessToken != null;

  void initialize() {
    final token = storageBox.get('access_token') as String?;
    if (token?.isNotEmpty ?? false) _accessToken = token;

    final id = storageBox.get('user_id') as int?;
    if (token?.isNotEmpty ?? false) _userId = id;
  }
}
