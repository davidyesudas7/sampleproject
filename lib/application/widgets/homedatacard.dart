import 'package:cached_network_image/cached_network_image.dart';
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
    return CachedNetworkImage(
      imageUrl: backgroundurl,
      imageBuilder: (context, imageProvider) => Material(
        elevation: 2,
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.red, BlendMode.colorBurn),
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontSize: 30, color: Colors.blueGrey.shade100),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ),
      ),
      placeholder: (context, url) => Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );
  }
}
