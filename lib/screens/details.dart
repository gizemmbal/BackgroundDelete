import 'package:flutter/material.dart';
import 'package:ninja_trips/models/MyImages.dart';
import 'package:ninja_trips/appClient.dart';
import 'output.dart';

class Details extends StatelessWidget {
  final MyImages plant;
  static var image2 = null;
  Details({@required this.plant});

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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ClipRRect(
                  // child: Image.asset(
                  //'images/G.jpg',

                  child: Image.network(
                '${plant.dataPath}',

                //'https://www.promarinetrade.com/cache/promarine/public/shop_product_picture/_1200x800x0/4618_G.jpg',
                //'https://cdnheryerbitki.ikost.com/3065/urunler/153.jpg',
                alignment: Alignment.topCenter,
              )),

              //Part for blah.dart
              /*
              ClipRRect(
                  child: Image.asset(
                //'images/${plant.img}',
                'images/param.JPG',
                alignment: Alignment.topCenter,
              )),
              */

              //SizedBox(height: 10),
              ElevatedButton(
                //color: Colors.black,
                child: Text(
                  'press for removing background',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  //Part for blah.dart
                  /*
                  Uint8List bytes =
                      (await NetworkAssetBundle(Uri.parse('${plant.dataPath}'))
                              .load('${plant.dataPath}'))
                          .buffer
                          .asUint8List();
                  */
                  //Part for blah.dart
                  /*
                  ByteData bytes = await rootBundle.load('${plant.dataPath}',);
                  Uint8List byte = bytes.buffer.asUint8List();
                  //String base64Image = base64.encode(byte);
                  print('hi');
                  var image2 = removeWhiteBackgroundFromImage(byte);
                  print(image2);
                  //print(base64Image);
                  */

                  //dynamic image1 = Image.network('https://www.promarinetrade.com/cache/promarine/public/shop_product_picture/_1200x800x0/4618_G.jpg');
                  //print(image1);

                  String imagePath = '${plant.dataPath}';
                  print('blah');
                  image2 = await ApiClient().removeBgApi(imagePath);
                  print('aaa');
                  print(image2.toString());
                  print(image2);
                  //dynamic _image = MemoryImage(image2);
                  print('blah');

/*
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [Image(image: _image)]

                      /*children: [
                      image2 != null
                          ? Image(image: image2)
                          : Image.network(
                              //'images/${plant.img}',
                              'https://www.remove.bg/example.jpg',
                              alignment: Alignment.topCenter,
                            )
                      ],*/
                      );
*/
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Output()),
                  );
                },
              ),

              //the one that did not worked
            ],
          ),
        ));
  }
}
