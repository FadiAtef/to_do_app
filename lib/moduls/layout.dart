import 'package:flutter/material.dart';
import 'package:to_do_app/moduls/settinds/settings_view.dart';
import 'package:to_do_app/moduls/task/task_view.dart';

class LayoutView extends StatefulWidget {
  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int current = 0;
  List<Widget> screens = [
    const TaskView(),
    const SettingsView(),
  ];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 2,
        onPressed: () {},
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        child: CircleAvatar(
          radius: 25,
          backgroundColor: theme.colorScheme.secondary,
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 93,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          currentIndex: current,
          onTap: (value) {
            setState(() {
              current = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/Icon awesome-list.png'),
              ),
              label: "Task",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_rounded),
              label: "Settings",
            ),
          ],
        ),
      ),
      body: screens[current],
    );
  }
}
