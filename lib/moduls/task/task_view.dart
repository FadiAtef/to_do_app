import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

import '../widgets/item_task_widget.dart';

class TaskView extends StatefulWidget {
  const TaskView({super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  final EasyInfiniteDateTimelineController _controller =
      EasyInfiniteDateTimelineController();
  var _focusDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 60.0),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: EdgeInsets.only(left: 35, right: 20, top: 50),
                height: mediaQuery.size.height * 0.22,
                width: mediaQuery.size.width,
                color: theme.colorScheme.secondary,
                child: Text(
                  'TO DO List',
                  style: theme.textTheme.bodyMedium
                      ?.copyWith(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 85,
                child: SizedBox(
                  width: mediaQuery.size.width,
                  child: EasyInfiniteDateTimeLine(
                    controller: _controller,
                    firstDate: DateTime(2024),
                    focusDate: _focusDate,
                    lastDate: DateTime(2024, 12, 31),
                    onDateChange: (selectedDate) {
                      setState(
                        () {
                          _focusDate = selectedDate;
                        },
                      );
                    },
                    dayProps: EasyDayProps(
                      activeDayStyle: DayStyle(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        dayStrStyle: theme.textTheme.displaySmall?.copyWith(
                          color: theme.colorScheme.secondary,
                        ),
                        dayNumStyle: theme.textTheme.displaySmall?.copyWith(
                          color: theme.colorScheme.secondary,
                        ),
                        monthStrStyle: theme.textTheme.displaySmall?.copyWith(
                          color: theme.colorScheme.secondary,
                        ),
                      ),
                      inactiveDayStyle: DayStyle(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.85),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        dayStrStyle: theme.textTheme.displaySmall?.copyWith(
                          color: Colors.black,
                        ),
                        dayNumStyle: theme.textTheme.displaySmall?.copyWith(
                          color: Colors.black,
                        ),
                        monthStrStyle: theme.textTheme.displaySmall?.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    showTimelineHeader: false,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => const ItemTaskWidget(),
            itemCount: 10,
          ),
        )
      ],
    );
  }
}
