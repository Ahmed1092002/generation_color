import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:generation_color/utils/Genaration_Funcrion.dart';

class ColorShape extends StatelessWidget {
 Color  color;


 ColorShape({required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(

  clipper:PolygonClipper(

            PolygonPathSpecs(

            sides: 7,
            rotate: 0,
            borderRadiusAngle: 5,
        ),
        ),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: color,
              boxShadow: [
                BoxShadow(
                  color: Colors.black, // Shadow color
                  spreadRadius:20,

               // Blur radius
                  offset: Offset(10, 10), // Offset in x and y direction
                ),
              ],
            ),
          ),
        ),
        Text('$color')
      ],
    );
  }
}
