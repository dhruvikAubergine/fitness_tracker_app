import 'package:fitness_tracker_app/features/home/cubit/activity_log_cubit.dart';
import 'package:fitness_tracker_app/utils/helperFuctions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

/// Provides a activity log cards.
class ActivityLogWidget extends StatelessWidget {
  const ActivityLogWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivityLogCubit, ActivityLogState>(
      builder: (context, state) {
        if (state is ActivityLogLoadedState) {
          return ListView.separated(
            itemCount: state.activityLogData.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemBuilder: (context, index) {
              final activityLog = state.activityLogData[index];
              final date = HelperFuctions.dateDisplayFormate(
                DateTime.parse(activityLog.date!),
              );
              final day =
                  DateFormat.E().format(DateTime.parse(activityLog.date!));
              final timeDuration = Duration(minutes: activityLog.duration!);
              final time = '${timeDuration.inHours}h';
              return Column(
                children: [
                  ListTile(
                    title: Text('$day | $date'),
                    subtitle: Text('${activityLog.rotations} Strides'),
                    trailing: const Icon(Icons.navigate_next_rounded),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(activityLog.calories!.toStringAsFixed(2)),
                          const Text('Calories'),
                        ],
                      ),
                      Column(
                        children: [
                          Text(activityLog.distance!.toStringAsFixed(2)),
                          const Text('Miles'),
                        ],
                      ),
                      Column(
                        children: [
                          Text(time),
                          const Text('Time'),
                        ],
                      )
                    ],
                  )
                ],
              );
            },
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
