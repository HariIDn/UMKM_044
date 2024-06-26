import 'package:flutter/material.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              // Navigate to home screen
            },
          ),
          VerticalDivider(thickness: 1,),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              // Navigate to profile screen
            },
          ),
        ],
      ),
      color: Colors.grey[300],
      shape: const CircularNotchedRectangle(),
      height: 65,
    );
  }
}
