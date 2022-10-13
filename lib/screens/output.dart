import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:ninja_trips/screens/details.dart';

class Output extends StatelessWidget {
  //var image2 = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
        ),

        //extendBodyBehindAppBar: true,
        body: Container(
            color: Color.fromARGB(255, 82, 105, 52),
            child: Column(
              children: [
                //Image.memory(Uint8List.fromList(Details.image2)),
                Image.memory(Details.image2),
                //Text(Details.image2.toString()),
              ],
            )));
  }
}
