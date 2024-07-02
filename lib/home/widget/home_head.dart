import 'package:flutter/material.dart';

class HomeHead extends StatelessWidget {
  const HomeHead({super.key});

  @override
  Widget build(BuildContext context) {
    return // Generated code for this Container Widget...
        Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Color(0x34090F13),
              offset: Offset(
                0.0,
                2,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
          child: TextFormField(
            obscureText: false,
            decoration: InputDecoration(
              hintText: 'Cari UMKM...',
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              contentPadding: EdgeInsetsDirectional.fromSTEB(24, 12, 12, 12),
              prefixIcon: Icon(
                Icons.search_sharp,
                color: Color(0xFF57636C),
              ),
            ),
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontFamily: 'Plus Jakarta Sans',
                  color: Color(0xFF0F1113),
                  fontSize: 16,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
      ),
    );
  }
}
