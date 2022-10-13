import 'package:flutter/material.dart';
import 'package:ninja_trips/models/MyImages.dart';
import 'package:ninja_trips/screens/details.dart';

class imagesList extends StatefulWidget {
  @override
  _imageListState createState() => _imageListState();
}

class _imageListState extends State<imagesList> {
  List<Widget> _imageTiles = [];
  final GlobalKey _listKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _addimages();
  }

  void _addimages() {
    // get data from db
    List<MyImages> _images = [
      MyImages(
          title: 'g',
          dataPath:
              'https://www.promarinetrade.com/cache/promarine/public/shop_product_picture/_1200x800x0/4618_G.jpg',
          difficulty: '3/10',
          img: 'G.jpg'),
      MyImages(
          title: 'alocasia',
          dataPath: 'https://cdnheryerbitki.ikost.com/3065/urunler/153.jpg',
          difficulty: '3/10',
          img: 'alocasia.jpg'),
      MyImages(
          title: 'ficus_lyrata',
          dataPath: 'https://cdnheryerbitki.ikost.com/3065/urunler/1542.jpg',
          difficulty: '4/10',
          img: 'ficus_lyrata.jpg'),
      MyImages(
          title: 'monstera',
          dataPath: 'https://cdnheryerbitki.ikost.com/3065/urunler/1865.jpg',
          difficulty: '2/10',
          img: 'monstera.jpg'),
      MyImages(
          title: 'nephrolepis',
          dataPath: 'https://cdnheryerbitki.ikost.com/3065/urunler/1881.jpg',
          difficulty: '2/10',
          img: 'nephrolepis.jpg'),
      MyImages(
          title: 'pilea',
          dataPath: 'https://cdnheryerbitki.ikost.com/3065/urunler/2127.jpg',
          difficulty: '2',
          img: 'pilea.jpg'),
      MyImages(
          title: 'pothos_golden',
          dataPath: 'https://cdnheryerbitki.ikost.com/3065/urunler/1556.jpg',
          difficulty: '2/10',
          img: 'pothos_golden.jpg'),
      MyImages(
          title: 'pothos_neon',
          dataPath: 'https://cdnheryerbitki.ikost.com/3065/urunler/1871.jpg',
          difficulty: '2/10',
          img: 'pothos_neon.jpg'),
      MyImages(
          title: 'sansevieria',
          dataPath: 'https://cdnheryerbitki.ikost.com/3065/urunler/2269.jpg',
          difficulty: '2',
          img: 'sansevieria.jpg'),
      MyImages(
          title: 'zamioculcas',
          dataPath: 'https://cdnheryerbitki.ikost.com/3065/urunler/2572.jpg',
          difficulty: '2/10',
          img: 'zamioculcas.jpg'),
    ];

    _images.forEach((MyImages my_image) {
      _imageTiles.add(_buildTile(my_image));
    });
  }

  Widget _buildTile(MyImages my_image) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Details(
                      plant: my_image,
                    )));
      },
      contentPadding: EdgeInsets.all(25),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(my_image.title,
              style: TextStyle(fontSize: 20, color: Colors.black)),
        ],
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          'images/${my_image.img}',
          height: 50.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        key: _listKey,
        itemCount: _imageTiles.length,
        itemBuilder: (context, index) {
          return _imageTiles[index];
        });
  }
}
