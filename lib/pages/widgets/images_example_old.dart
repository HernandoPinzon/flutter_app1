

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImgesExample extends StatelessWidget {
  const ImgesExample({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      reverse: false,
      physics: NeverScrollableScrollPhysics(),//para eliminar el scroll
      child: Container(
        color: Colors.grey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 300,
              height: 150,
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Riley_Reid_accompanied_by_Josh_Mayer_at_AVN_Awards_2016_%2826606426431%29.jpg/1365px-Riley_Reid_accompanied_by_Josh_Mayer_at_AVN_Awards_2016_%2826606426431%29.jpg",
                fit: BoxFit.scaleDown,
              ),
            ),
            Container(
              width: 300,
              height: 150,
              child: Image.asset('assets/images/haise.jpg'),
            ),
            CachedNetworkImage(
              imageUrl: "https://pbs.twimg.com/media/Ez_kjRwXMAMK4zl?format=jpg",
              placeholder: (_,__) => CircularProgressIndicator(),
            ),
            Image.network(
              "https://pbs.twimg.com/media/Ez_kjRwXMAMK4zl?format=jpg",
              fit: BoxFit.scaleDown,
            ),
            
          ]+ List.generate(
              10, 
              (index) => CachedNetworkImage(
                imageUrl: "https://pbs.twimg.com/media/Ez_kjRwXMAMK4zl?format=jpg",
                placeholder: (_,__) => CircularProgressIndicator()
              )
            ).toList()
        ),
      ),
    );
  }
}