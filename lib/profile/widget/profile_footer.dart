import 'package:flutter/material.dart';
import 'package:umkm/form/login/screen/form_login.dart';

class ProfileFooter extends StatelessWidget {
  const ProfileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 40),
      child: ElevatedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                    title: Text('Logout'),
                    content: Text('Apakah Anda Ingin Logout?'),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Batal')),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => FormLogin()),
                                (route) => false);
                          },
                          child: Text('Ya'))
                    ]);
              });
        },
        child: Text(
          'Log Out',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontFamily: 'Plus Jakarta Sans',
                color: Color(0xFF14181B),
                fontSize: 16,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
              ),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(110, 50),
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
          elevation: 3,
          side: BorderSide(
            color: Colors.white,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
