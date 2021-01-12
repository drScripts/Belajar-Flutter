import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.person_pin),
          title: Text('Opacity Costum Card Widget'),
          backgroundColor: Color(0xFF8C062F)),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: <Color>[Colors.pink[600], Colors.purple[900]],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          Center(
            child: SizedBox(
              width: (MediaQuery.of(context).size.width * 0.8),
              height: (MediaQuery.of(context).size.height * 0.7),
              child: Card(
                  elevation: 20,
                  child: Stack(children: <Widget>[
                    Opacity(
                        opacity: 0.3,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                image: DecorationImage(
                                    repeat: ImageRepeat.repeat,
                                    image: AssetImage('images/pattern.png'))))),
                    Container(
                        height: (MediaQuery.of(context).size.height * 0.35),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://wallpapercave.com/wp/wp2338561.jpg')))),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          20,
                          (50 + (MediaQuery.of(context).size.height * 0.35)),
                          20,
                          20),
                      child: Center(
                        child: Column(children: <Widget>[
                          Text('Beautiful Chaeyoung HD WallPaper',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                color: Color(0xfff56d5d),
                                fontSize: 25,
                              )),
                          Container(
                            margin: EdgeInsets.only(top: 20, bottom: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Posted on',
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                    )),
                                Text('January 12, 2021 ',
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      color: Color(0xfff56d5d),
                                      fontSize: 10,
                                    ))
                              ],
                            ),
                          ),
                          Row(children: <Widget>[
                            Spacer(flex: 10),
                            //Icon
                            Icon(Icons.thumb_up, color: Colors.grey),
                            Spacer(flex: 1),
                            //Text
                            Text('900', style: TextStyle(color: Colors.grey)),
                            Spacer(flex: 5),
                            //Icon,
                            Icon(Icons.comment_rounded, color: Colors.grey),
                            Spacer(flex: 1),
                            //jumlah komentar
                            Text('900', style: TextStyle(color: Colors.grey)),
                            Spacer(flex: 10),
                          ])
                        ]),
                      ),
                    )
                  ])),
            ),
          )
        ],
      ),
    );
  }
}
