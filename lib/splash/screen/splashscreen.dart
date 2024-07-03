import 'package:flutter/material.dart';
import 'package:umkm/form/login/screen/form_login.dart';
import 'package:umkm/form/signup/screen/form_signup.dart';

// Suggested code may be subject to a license. Learn more: ~LicenseLog:3512782153.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2200586234.

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/emblem.png',
                          ).image,
                        ),
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'UMKM',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                    fontFamily: 'Outfit',
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0,
                                  ),
                            ),
                            TextSpan(
                              text: 'Maps',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                      fontFamily: 'Outfit',
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0,
                                      color: Theme.of(context).primaryColor),
                            )
                          ],
                          style: TextStyle(
                            fontFamily: 'Outfit',
                            fontSize: 32,
                            letterSpacing: 0,
                            fontWeight: FontWeight
                                .bold, // If 'displaySmall' was meant to be bold
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 12),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print('Button pressed ...');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FormSignup()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context)
                          .primaryColor, // Use your theme's primary color
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0,
                          vertical: 0), // Adjust padding as needed
                      textStyle: TextStyle(
                        fontFamily: 'Plus Jakarta Sans',
                        letterSpacing: 0,
                        fontSize: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.fontSize, // Match your theme's titleSmall size
                      ),
                      minimumSize:
                          const Size.fromHeight(50), // Set the desired height
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            25), // Set the desired border radius
                      ),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FormLogin()),
                            );
                          },
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'Already a member?  ',
                                    style: TextStyle(
                                      fontFamily: 'Plus Jakarta Sans',
                                      letterSpacing: 0,
                                      color: Colors.black,
                                    )),
                                TextSpan(
                                  text: 'Sign In',
                                  style: TextStyle(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                )
                              ],
                              style: TextStyle(
                                fontFamily: 'Plus Jakarta Sans',
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
