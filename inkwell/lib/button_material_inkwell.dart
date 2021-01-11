import 'package:flutter/material.dart';
import 'raised_button.dart';

class ButtonMaterialInkwell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Material InkWell'),
        backgroundColor: Colors.pink[100],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Center(
                  child: Text('Button Dengan menggunakan Material InkWell'))),
          Material(
            elevation: 15,
            borderRadius: BorderRadius.circular(25),
            child: Container(
              width: 150,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                      colors: <Color>[Colors.blue[900], Colors.purple[900]],
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight)),
              child: Material(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.blue[800],
                    child: Center(
                        child: Text(
                      'Back',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    )),
                    borderRadius: BorderRadius.circular(25),
                    onTap: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RaisedButtons(),
                          ));
                    },
                  )),
            ),
          )
        ],
      ),
    );
  }
}
