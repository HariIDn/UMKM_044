import 'package:flutter/material.dart';
import 'package:umkm/form/login/screen/form_login.dart';

class SingupFooter extends StatelessWidget {
  const SingupFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
