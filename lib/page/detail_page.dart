import 'package:flutter/material.dart';
import 'package:umkm/page/widget/tab_widget.dart';

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
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: ClipRRect(
                child: Image.network(
                  'https://picsum.photos/seed/142/600',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8, 10, 0, 0),
              child: Text(
                'UMKM di daerah Yogyakarta',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontFamily: 'Outfit',
                      letterSpacing: 0,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8, 10, 0, 0),
              child: Text(
                'Jl. Brawijaya, Geblagan, Tamantirto, Kec. Kasihan, Kabupaten Bantul, Daerah Istimewa Yogyakarta 55183',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0,
                    ),
              ),
            ),
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
