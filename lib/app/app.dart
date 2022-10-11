// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:fitness_tracker_app/features/authentication/cubit/login_cubit.dart';
import 'package:fitness_tracker_app/features/authentication/pages/login_page.dart';
import 'package:fitness_tracker_app/features/home/cubit/activity_log_cubit.dart';
import 'package:fitness_tracker_app/features/home/cubit/chart_details_cubit.dart';
import 'package:fitness_tracker_app/features/home/pages/home_page.dart';
import 'package:fitness_tracker_app/features/profile/cubit/profile_cubit.dart';
import 'package:fitness_tracker_app/features/profile/pages/profile_page.dart';
import 'package:fitness_tracker_app/l10n/l10n.dart';
import 'package:fitness_tracker_app/services/app_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// This is the root of the widget tree and starting point of the application.
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    AppService.instance.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => ProfileCubit()),
        BlocProvider(create: (context) => ActivityLogCubit()),
        BlocProvider(create: (context) => ChartDetailsCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
          colorScheme: ColorScheme.fromSwatch(
            accentColor: const Color(0xFF13B9FF),
          ),
        ),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        home: AppService.instance.isLoggedIn
            ? const HomePage()
            : const LoginPage(),
        routes: {
          HomePage.routeName: (context) => const HomePage(),
          ProfilePage.routeName: (context) => const ProfilePage(),
        },
      ),
    );
  }
}
