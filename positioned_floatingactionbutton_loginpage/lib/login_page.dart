import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigCircle(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEEEEEE),
        body: Stack(
          children: [
            Positioned(
              right: -getSmallDiameter(context) / 3,
              top: -getSmallDiameter(context) / 3,
              child: Container(
                  width: getSmallDiameter(context),
                  height: getSmallDiameter(context),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffb226b2), Color(0xffff6da7)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      shape: BoxShape.circle)),
            ),
            Positioned(
              right: getBigCircle(context) / 3.2,
              top: -getBigCircle(context) / 4.5,
              child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'dribblee',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Pacifico',
                        fontSize: 35),
                  ),
                  width: getBigCircle(context),
                  height: getBigCircle(context),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffb226b2), Color(0xffff6da7)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      shape: BoxShape.circle)),
            ),
            Positioned(
              right: -getBigCircle(context) / 3,
              bottom: -getBigCircle(context) / 3,
              child: Container(
                  width: getBigCircle(context),
                  height: getBigCircle(context),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xfff3e9ee))),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: ListView(children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                    child: Column(
                      children: [
                        TextField(
                            decoration: InputDecoration(
                                icon:
                                    Icon(Icons.email, color: Color(0xffff4891)),
                                hintText: 'Input Your Email',
                                hintStyle: TextStyle(color: Color(0xffff4891)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffff4891))))),
                        TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                icon: Icon(Icons.vpn_key,
                                    color: Color(0xffff4891), size: 25),
                                hintText: 'Input Your Password',
                                hintStyle: TextStyle(color: Color(0xffff4891)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffff4891)))))
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.only(right: 20, bottom: 40),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: Color(0xffff4891)),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            height: 40,
                            child: Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(25),
                              child: Container(
                                width: 150,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xffb226b2),
                                          Color(0xffff6da7)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter)),
                                child: Material(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.transparent,
                                    child: InkWell(
                                        splashColor: Color(0xffff6da7),
                                        borderRadius: BorderRadius.circular(25),
                                        onTap: () {},
                                        child: Center(
                                          child: Text('Log in!',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 15)),
                                        ))),
                              ),
                            ),
                          ),
                          FloatingActionButton(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              onPressed: () {},
                              child: Image(
                                  image: AssetImage('images/facebook.png'),
                                  width: 70)),
                          FloatingActionButton(
                              elevation: 0,
                              backgroundColor: Colors.transparent,
                              onPressed: () {},
                              child: Image(
                                  image: AssetImage('images/twitter.png'),
                                  width: 55))
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Dont have an account?',
                          style: TextStyle(color: Colors.grey)),
                      Text('Sign Up',
                          style: TextStyle(color: Color(0xffff4891))),
                    ],
                  )
                ])),
          ],
        ));
  }
}
