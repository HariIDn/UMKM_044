import 'package:flutter/material.dart';
import 'package:umkm/detail/widget/detail_head.dart';
import 'package:umkm/detail/widget/tab_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailHead(),
            SizedBox(
              height: 10,
            ),
            TabWidget()
          ],
        ),
      ),
    );
  }
}
