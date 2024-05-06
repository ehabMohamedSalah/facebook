import 'package:flutter/material.dart';

class SecondStates extends StatelessWidget {
  String item;
  SecondStates(this.item);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),border: Border.all(color: Colors.black12,width: 1),
      ),
      child: Row(
        children: [
          Icon(Icons.ac_unit,color: Colors.blueAccent,),
          Text(item),
        ],
      ),

    );
  }
}
