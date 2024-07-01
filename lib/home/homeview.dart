import 'package:flutter/material.dart';
import 'package:umkm/home/widget/home_footer.dart';
import 'package:umkm/umkm/controller/umkm_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final UMKMController _controller = UMKMController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              icon: const Icon(
                Icons.bookmark,
                color: Colors.white,
              ),
              onPressed: () {
                // Add your save logic here
              },
            ),
          ),
        ],
      ),
      body: ListView(
        children: [],
      ),
      bottomNavigationBar: HomeFooter(),
    );
  }
}
