import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataCard extends StatelessWidget {
  const DataCard({
    super.key,
    required this.title,
    required this.backgroundurl,
  });
  final String title;
  final String backgroundurl;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(backgroundurl))),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.pacifico(textStyle: const TextStyle(fontSize: 30)),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ),
    );
  }
}
