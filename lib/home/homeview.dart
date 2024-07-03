import 'package:flutter/material.dart';
import 'package:umkm/home/widget/home_footer.dart';
import 'package:umkm/home/widget/home_head.dart';
import 'package:umkm/detail/page/detail_page.dart';
import 'package:umkm/umkm/controller/umkm_controller.dart';
import 'package:umkm/umkm/model/umkm.dart';

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
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const HomeHead(),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1, // Replace with the actual number of items
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailPage(),
                      ),
                    );
                  },
                  child: ListTile(
                    title: const Text('UMKM Yogya'),
                    subtitle: const Text(
                      'Jl. Brawijaya, Geblagan, Tamantirto, Kec. Kasihan, Kabupaten Bantul, Daerah Istimewa Yogyakarta 55183',
                    ),
                    leading: CircleAvatar(
                      backgroundImage: const NetworkImage(
                        'https://picsum.photos/seed/142/600',
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const HomeFooter(),
    );
  }
}
