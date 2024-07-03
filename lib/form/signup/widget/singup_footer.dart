import 'package:flutter/material.dart';
import 'package:umkm/form/login/screen/form_login.dart';

class SingupFooter extends StatelessWidget {
  const SingupFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
          child: ElevatedButton(
            onPressed: () async {
              // Add your onPressed logic here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context)
                  .primaryColor, // Use your theme's primary color
              textStyle: TextStyle(
                fontFamily: 'Plus Jakarta Sans',
                letterSpacing: 0,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              minimumSize: const Size.fromHeight(50), // Set the desired height
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
                side: const BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
              ),
              elevation: 0,
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormLogin()),
                );
              },
              child: const Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: // Suggested code may be subject to a license. Learn more: ~LicenseLog:39529280.
                    // Suggested code may be subject to a license. Learn more: ~LicenseLog:3080966558.

                    InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FormLogin()),
                    );
                  },
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Sudah Punya Akun? ",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0,
                                  ),
                        ),
                        TextSpan(
                          text: 'Log In disini',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0,
                                    decoration: TextDecoration.underline,
                                  ),
                        ),
                        TextSpan(
                          text: '.',
                          style: TextStyle(),
                        )
                      ],
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontFamily: 'Plus Jakarta Sans',
                            letterSpacing: 0,
                          ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
