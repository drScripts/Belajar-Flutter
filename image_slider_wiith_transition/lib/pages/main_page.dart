import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_slider_wiith_transition/widget/movie.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double currentPageVal = 0;

  PageController controller =
      PageController(initialPage: 0, viewportFraction: 0.6);
  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPageVal = controller.page;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> url = [
      'https://wallpaperaccess.com/full/1099263.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvaa3TchT9QXuPoyKvZkqK_sbfsQGwn3KCOQ&usqp=CAU',
      'https://c4.wallpaperflare.com/wallpaper/494/697/154/singers-iu-wallpaper-preview.jpg',
      'https://www.itl.cat/pngfile/big/309-3094896_iu-wallpapers-26-images-dodowallpaper-lockscreen-iu-wallpaper.jpg'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Slider'),
        backgroundColor: Colors.pink[100],
      ),
      body: PageView.builder(
        itemCount: url.length,
        controller: controller,
        itemBuilder: (context, index) {
          double diferent = index - currentPageVal;
          if (diferent < 0) {
            diferent = diferent * -1;
          }
          diferent = min(1, diferent);
          return Center(
            child: Movie(
              url: url[index],
              scale: 1 - (diferent * 0.3),
            ),
          );
        },
      ),
    );
  }
}
