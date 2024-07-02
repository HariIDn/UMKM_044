import 'package:flutter/material.dart';
import 'package:umkm/home/homeview.dart';
import 'package:umkm/profile/profileview.dart';

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
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => HomeView()),
                (route) => false,
              );
            },
          ),
          VerticalDivider(
            thickness: 1,
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => ProfileView()),
                (route) => false,
              );
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

Widget build(BuildContext context) {
  return BottomAppBar(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeView()),
            );
          },
        ),
        VerticalDivider(
          thickness: 1,
        ),
        IconButton(
          icon: const Icon(Icons.person),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => ProfileView()),
              (route) => false,
            );
          },
        ),
      ],
    ),
    color: Colors.grey[300],
    shape: const CircularNotchedRectangle(),
    height: 65,
  );
}
