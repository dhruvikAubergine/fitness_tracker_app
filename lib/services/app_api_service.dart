import 'dart:convert';

import 'package:fitness_tracker_app/features/authentication/modals/login_response.dart';
import 'package:fitness_tracker_app/features/home/modals/activity_log_data/activity_log_response.dart';
import 'package:fitness_tracker_app/features/home/modals/chart_data/chart_response.dart';
import 'package:fitness_tracker_app/features/profile/modals/profile_response.dart';
import 'package:fitness_tracker_app/services/app_service.dart';
import 'package:http/http.dart' as http;

class AppApiService {
  factory AppApiService() => _instance;
  AppApiService._();
  static AppApiService get instance => _instance;
  static final AppApiService _instance = AppApiService._();
  final String baseUrl = 'http://devapi.mycubii.com';

  Future<LoginResponse> login({
    required String email,
    required String password,
  }) async {
    final url = Uri.parse('http://devapi.mycubii.com/api/v5/login/');
    final body = {
      'email': email,
      'password': password,
    };
    final response = await http.post(
      url,
      headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json'
      },
      body: json.encode(body),
    );
    final loginResponse = LoginResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
    return loginResponse;
  }

  Future<ChartResponse> getChartDetails({
    required String startDate,
    required String endDate,
  }) async {
    final appService = AppService.instance;
    final url = Uri.parse(
      '$baseUrl/api/v5/users/${appService.userId}/progress/?start_date=$startDate&end_date=$endDate&response_range=weekly',
    );

    final response = await http.get(
      url,
      headers: {
        'Authorization': appService.accessToken,
        'Content-type': 'application/json',
        'Accept': 'application/json',
      },
    );
    final chartDetailsResponse = ChartResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
    return chartDetailsResponse;
  }

  Future<ActivityLogResponse> getActivityLog({
    required String startDate,
    required String endDate,
  }) async {
    final appService = AppService.instance;
    final url = Uri.parse(
      '$baseUrl/api/v5/users/${appService.userId}/progress/activity_log/?start_date=$startDate&end_date=$endDate&response_range=weekly',
    );

    final response = await http.get(
      url,
      headers: {
        'Authorization': appService.accessToken,
        'Content-type': 'application/json',
        'Accept': 'application/json',
      },
    );
    final activityLogResponse = ActivityLogResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
    return activityLogResponse;
  }

  Future<ProfileResponse> getUserProfile() async {
    final appService = AppService.instance;
    final url = Uri.parse(
      '$baseUrl/api/v5/users/${appService.userId}',
    );

    final response = await http.get(
      url,
      headers: {
        'Authorization': appService.accessToken,
        'Content-type': 'application/json',
        'Accept': 'application/json',
      },
    );
    final profileResponse = ProfileResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
    return profileResponse;
  }
}
