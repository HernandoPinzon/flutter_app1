






import 'package:flutter/material.dart';
import 'package:flutter_app2/pages/widgets/image_item.dart';

class GridPage extends StatelessWidget {
  const GridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 2
        ),
        itemBuilder: (_,index)=> ImageItem(),
        itemCount: 50,
      ),
    );
  }
}