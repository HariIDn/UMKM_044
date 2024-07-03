import 'package:flutter/material.dart';
import 'package:umkm/home/widget/home_footer.dart';

import 'package:umkm/profile/widget/profile_body.dart';
import 'package:umkm/profile/widget/profile_footer.dart';
import 'package:umkm/profile/widget/profile_head.dart';

import '../../form/usaha/screen/form_usaha.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ProfileHead(),
          ProfileBody(),
          ProfileFooter(),
        ],
      ),
      bottomNavigationBar: HomeFooter(),
    );
  }
}
