import 'package:flutter/material.dart';

import '../../../home/homeview.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.disabled,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 18, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                  child: Text(
                    'Email',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                TextFormField(
                  autofocus: false,
                  autofillHints: [AutofillHints.email],
                  textInputAction: TextInputAction.next,
                  obscureText: false,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.error,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.error,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontFamily: 'Plus Jakarta Sans',
                        fontSize: 16,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                        height: 1,
                      ),
                  minLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 18, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                  child: Text(
                    'Password',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                TextFormField(
                  autofocus: false,
                  autofillHints: [AutofillHints.newPassword],
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.error,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.error,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Theme.of(context).scaffoldBackgroundColor,
                    suffixIcon: InkWell(
                      onTap: () {},
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        Icons.visibility_outlined,
                        color: Theme.of(context)
                            .colorScheme
                            .onSecondary, //note for this
                        size: 18,
                      ),
                    ),
                  ),
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontFamily: 'Plus Jakarta Sans',
                        fontSize: 16,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                        height: 1,
                      ),
                  cursorColor: Theme.of(context).primaryColor,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => HomeView()),
                        (route) => false,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context)
                          .primaryColor, // Use your theme's primary color
                      textStyle: TextStyle(
                        fontFamily: 'Plus Jakarta Sans',
                        letterSpacing: 0,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0,
                          vertical: 0), // Adjust padding as needed
                      minimumSize:
                          const Size.fromHeight(50), // Set the desired height
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      side: const BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Log In',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
