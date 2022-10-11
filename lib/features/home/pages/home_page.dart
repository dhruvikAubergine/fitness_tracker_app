import 'package:fitness_tracker_app/features/home/cubit/activity_log_cubit.dart';
import 'package:fitness_tracker_app/features/home/cubit/chart_details_cubit.dart';
import 'package:fitness_tracker_app/features/home/widgets/activity_log_widget.dart';
import 'package:fitness_tracker_app/features/home/widgets/chart_widget.dart';
import 'package:fitness_tracker_app/features/profile/pages/profile_page.dart';
import 'package:fitness_tracker_app/utils/helperFuctions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Provides a home page with chat and activity logs.
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const routeName = '/home-page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime endDate = DateTime.now();
  DateTime startDate = DateTime.now().subtract(const Duration(days: 7));

  @override
  void initState() {
    super.initState();
    context.read<ChartDetailsCubit>().getChartDetails(
          startDate: HelperFuctions.dateSendFormate(startDate),
          endDate: HelperFuctions.dateSendFormate(endDate),
        );
    context.read<ActivityLogCubit>().getActivityLog(
          startDate: HelperFuctions.dateSendFormate(startDate),
          endDate: HelperFuctions.dateSendFormate(endDate),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Fitness Tracker'),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle_rounded),
            onPressed: () async {
              await Navigator.pushNamed(
                context,
                ProfilePage.routeName,
              );
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          elevation: 4,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          startDate =
                              startDate.subtract(const Duration(days: 8));
                          endDate = endDate.subtract(const Duration(days: 8));
                          context.read<ChartDetailsCubit>().getChartDetails(
                                startDate:
                                    HelperFuctions.dateSendFormate(startDate),
                                endDate:
                                    HelperFuctions.dateSendFormate(endDate),
                              );
                          context.read<ActivityLogCubit>().getActivityLog(
                                startDate:
                                    HelperFuctions.dateSendFormate(startDate),
                                endDate:
                                    HelperFuctions.dateSendFormate(endDate),
                              );
                        });
                      },
                      icon: const Icon(Icons.navigate_before_rounded),
                    ),
                    Text(
                      '${HelperFuctions.dateDisplayFormate(startDate)} - ${HelperFuctions.dateDisplayFormate(endDate)}',
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        if (endDate.day != DateTime.now().day) {
                          setState(() {
                            startDate = startDate.add(const Duration(days: 8));
                            endDate = endDate.add(const Duration(days: 8));

                            context.read<ChartDetailsCubit>().getChartDetails(
                                  startDate:
                                      HelperFuctions.dateSendFormate(startDate),
                                  endDate:
                                      HelperFuctions.dateSendFormate(endDate),
                                );
                            context.read<ActivityLogCubit>().getActivityLog(
                                  startDate:
                                      HelperFuctions.dateSendFormate(startDate),
                                  endDate:
                                      HelperFuctions.dateSendFormate(endDate),
                                );
                          });
                        }
                      },
                      icon: const Icon(Icons.navigate_next_rounded),
                    )
                  ],
                ),
                const ChartWidget(),
                const ActivityLogWidget(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
