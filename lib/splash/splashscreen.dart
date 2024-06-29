import 'package:flutter/material.dart';
import 'package:umkm/login/loginpage.dart';
import 'splash_model.dart';
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3512782153.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2200586234.
export 'splash_model.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = LoginModel();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
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
                            image: Image.network(
                              'https://t-2.tstatic.net/makassar/foto/bank/images/masih-dibuka-cara-daftar-blt-umkm-dapatkan-bantuan-rp-24-juta-lengkapi-5-syarat-berikut.jpg',
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
                                    builder: (context) => Loginpage()),
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
      ),
    );
  }
}
