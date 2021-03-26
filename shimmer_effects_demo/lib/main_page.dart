import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shimmer Effect'),
      ),
      body: Center(
          child: Stack(
        children: [
          Container(
            width: 300,
            height: 150,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(getImage()),
              ),
            ),
          ),
          Shimmer(
            gradient: LinearGradient(
              stops: [0.4, 0.5, 0.6],
              colors: [
                Colors.white.withOpacity(0),
                Colors.white.withOpacity(0.5),
                Colors.white.withOpacity(0)
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
            child: Container(
              width: 300,
              height: 150,
              color: Colors.pink[100],
            ),
          )
        ],
      )),
    );
  }
}

String getImage() {
  return 'https://lh3.googleusercontent.com/proxy/PhogQ-iapfdpBK3qjAJuI1_20q1kpyIXObA97t1Nq3RZfJIYK7PMG7rU8vKjAwu1qV_5DfiYvHAylfzYeKKLeYCYYs-fEWMmhPA0PrI8hMFBID4';
}
