import 'package:flutter/material.dart';

class DetailHead extends StatefulWidget {
  const DetailHead({super.key});

  @override
  State<DetailHead> createState() => _DetailHeadState();
}

class _DetailHeadState extends State<DetailHead> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
          child: Text(
            'UMKM di daerah Yogyakarta',
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontFamily: 'Outfit',
                  letterSpacing: 0,
                ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
          child: Text(
            'Jl. Brawijaya, Geblagan, Tamantirto, Kec. Kasihan, Kabupaten Bantul, Daerah Istimewa Yogyakarta 55183',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0,
                ),
          ),
        ),
      ],
    );
  }
}
