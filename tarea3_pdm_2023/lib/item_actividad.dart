import 'package:flutter/material.dart';

class ItemActividad extends StatelessWidget {

  ItemActividad(int index, {super.key});
  @override
  Widget build(BuildContext context) {
    var index = 1;
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/image-4.jpg',width: 120, height: 120,),
          Text("Day ${index}", style: TextStyle(fontSize: 11)),
          Text("Bali mountains"),
        ],
      ),
    );
  }
}
