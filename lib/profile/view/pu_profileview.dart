import 'package:flutter/material.dart';
import 'package:umkm/form/usaha/screen/form_usaha.dart';
import 'package:umkm/home/widget/home_footer.dart';
import 'package:umkm/profile/widget/profile_footer.dart';
import 'package:umkm/profile/widget/profile_head.dart';
import 'package:umkm/profile/widget/puprofile_body.dart';

import '../../menu/screen/menu_screen.dart';

class PUProfileView extends StatefulWidget {
  const PUProfileView({super.key});

  @override
  State<PUProfileView> createState() => _PUProfileViewState();
}

class _PUProfileViewState extends State<PUProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ProfileHead(),
          PUProfileBody(),
          ProfileFooter(),
        ],
      ),
      bottomNavigationBar: HomeFooter(),
    );
  }
}
