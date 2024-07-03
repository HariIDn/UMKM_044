import 'package:flutter/material.dart';

import '../../../page/signup_page.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 48),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Theme.of(context).colorScheme.primary,
            width: 1,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                child: Text(
                  'Masih Belum Punya Akun?',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontFamily: 'Outfit',
                        letterSpacing: 0,
                      ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                    (route) => false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color(0x4d9489f5), // Use accent color if available
                  textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontFamily: 'Plus Jakarta Sans',
                        letterSpacing: 0,
                      ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 12, horizontal: 24), // Adjust padding as needed
                  minimumSize: const Size.fromHeight(50), // Set minimum height
                  elevation: 0,
                  side: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 2,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text('Buat Akun'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
