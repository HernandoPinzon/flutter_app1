






import 'package:flutter/material.dart';
import 'package:flutter_app2/pages/widgets/image_item.dart';

class GridPage extends StatelessWidget {
  const GridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 9/16,
        children: List.generate(
          10, 
          (index) => ImageItem()
        ),
      ),
    );
  }
}