import 'package:flutter/material.dart';
import 'package:generation_color/componangt/Generation_Color.dart';
import 'package:generation_color/componangt/Shape_of_Color.dart';

import '../utils/Genaration_Funcrion.dart';

class MainScrean extends StatefulWidget {


  @override
  State<MainScrean> createState() => _MainScreanState();
}

class _MainScreanState extends State<MainScrean> {

  List<Color> colors = List.generate(5, (index) => getRandomColor());

  int count=5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Generation Color',

        ),
        centerTitle: true,
      ),
      body: Column(

        children: [SizedBox(
          height: 10,
        ),

          ElevatedButton(onPressed:(){
            setState(() {
              for (int i=0; i<count; i++) {
                colors = List.generate(count, (index) => getRandomColor());

              }
            });
          }
              , child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'generation color'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 30
                  ),
                ),
              )),
     SizedBox(
        height: 20,
      ),

          Expanded(
            child: GridView.builder(itemCount: count,
              itemBuilder: (context, index) =>ColorShape(color: colors[index]) ,

             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                 ),
          )

        ],
      ),
    );
  }
}
