import 'package:charts_flutter/flutter.dart' as charts;
import 'package:fitness_tracker_app/features/home/cubit/chart_details_cubit.dart';
import 'package:fitness_tracker_app/features/home/modals/chart_data/workouts_datum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

/// Provides a chart for display strides.
class ChartWidget extends StatelessWidget {
  const ChartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChartDetailsCubit, ChartDetailsState>(
      builder: (context, state) {
        if (state is ChartDetailsLoadedState) {
          final data = state.chartResponse;
          final timeDuration =
              Duration(minutes: data.total?.totalDuration ?? 0);
          final time = '${timeDuration.inHours}h';

          final series = <charts.Series<WorkoutsDatum, String>>[
            charts.Series(
              id: 'fitness',
              data: data.workoutsData!,
              domainFn: (WorkoutsDatum series, _) =>
                  DateFormat.E().format(DateTime.parse(series.date!)),
              measureFn: (WorkoutsDatum series, _) => series.bleData?.rotations,
            )
          ];

          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.rotate_left_outlined,
                          color: Colors.blue[400],
                        ),
                      ),
                      Text(
                        '${data.total?.totalRotations ?? 0}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const Text('Strides'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.local_fire_department_rounded,
                          color: Colors.redAccent[400],
                        ),
                      ),
                      Text(
                        '${data.total?.totalCalories?.toInt() ?? 0}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const Text('Calories'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.location_on_rounded,
                          color: Colors.green[400],
                        ),
                      ),
                      Text(
                        data.total?.totalDistance?.toStringAsFixed(2) ?? '0',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const Text('Miles'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.watch,
                          color: Colors.amber[400],
                        ),
                      ),
                      Text(
                        time,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const Text('Time'),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  height: 300,
                  child: charts.BarChart(series, animate: true),
                ),
              ),
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
