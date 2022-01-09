



import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: "https://pbs.twimg.com/media/Ez_kjRwXMAMK4zl?format=jpg",
      placeholder: (_,__) => Center(child: CircularProgressIndicator()),
      fit: BoxFit.cover,
    );
  }
}