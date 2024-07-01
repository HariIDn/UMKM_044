import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: TabBar(tabs: [
          Tab(text: "Review"),
          Tab(text: "Menu"),
        ]));
  }
}
