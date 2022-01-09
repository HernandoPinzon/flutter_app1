

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImgesExample extends StatelessWidget {
  const ImgesExample({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, int index){
        return Container(
          height: 100,
          width: 300,
          color: Colors.grey,
          child: CachedNetworkImage(
            imageUrl: "https://pbs.twimg.com/media/Ez_kjRwXMAMK4zl?format=jpg",
            placeholder: (_,__) => CircularProgressIndicator(),
            fit: BoxFit.scaleDown,
          ),
        );
      },
      itemCount: 300,
      itemExtent: 100,
    );
  }
}