import 'package:flutter/material.dart';
import 'package:image_slider_using_page_view/ui/widget/movie_box.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageController controller =
        PageController(initialPage: 0, viewportFraction: 0.7);
    List<String> url = [
      'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/IU_in_%22Love_Poem%22_Concert_in_Seoul_on_23rd_November_2019.jpg/1200px-IU_in_%22Love_Poem%22_Concert_in_Seoul_on_23rd_November_2019.jpg',
      'https://img.okezone.com/content/2020/07/24/205/2251750/pandemi-covid-19-iu-kecewa-batal-gelar-konser-5DqYJo8tS2.jpg',
      'https://levinaurell.files.wordpress.com/2015/08/iu.jpg',
      'https://i.pinimg.com/originals/0a/b4/f5/0ab4f5bee0c44a738b0f3131fe327617.jpg'
    ];
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        title: Text('Image Slider Using Page View'),
        backgroundColor: Colors.pink[100],
      ),
      body: PageView.builder(
        controller: controller,
        itemCount: url.length,
        itemBuilder: (context, index) => Center(
          child: MovieBox(url: url[index]),
        ),
      ),
    );
  }
}
