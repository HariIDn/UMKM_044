import 'package:flutter/material.dart';
import 'package:umkm/home/widget/home_footer';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Text('Home View'),
      ),
      bottomNavigationBar: HomeFooter(),
    );
  }
}
