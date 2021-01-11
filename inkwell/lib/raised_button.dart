import 'package:flutter/material.dart';
import 'button_material_inkwell.dart';

class RaisedButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('InkWell'), backgroundColor: Colors.pink[100]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Raised Button Biasa'),
          Center(
              child: RaisedButton(
            child: Text('Lihat Button dengan Materal dan InkWell'),
            shape: StadiumBorder(),
            color: Colors.blue[50],
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ButtonMaterialInkwell();
              }));
            },
          )),
        ],
      ),
    );
  }
}
