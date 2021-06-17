import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoPageFoundView extends StatelessWidget {
  const NoPageFoundView({Key? key, this.text}) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text == null ? '404 - Página no encontrada' : text!,
        style: GoogleFonts.montserratAlternates(
            fontSize: 50, fontWeight: FontWeight.bold),
      ),
    );
  }
}
