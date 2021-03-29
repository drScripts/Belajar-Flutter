import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  final int amount = 1020000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Currency Format',
          style: GoogleFonts.poppins(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "normal",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              amount.toString(),
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Colors.pink[700],
                  fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Curency",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              NumberFormat.currency(
                      locale: 'id', symbol: 'Rp ', decimalDigits: 0)
                  .format(amount),
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Colors.pink[700],
                  fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Compact Currency",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              NumberFormat.compactCurrency(
                      symbol: 'Rp ', decimalDigits: 0, locale: 'id')
                  .format(amount),
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Colors.pink[700],
                  fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
