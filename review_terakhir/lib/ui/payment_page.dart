import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:review_terakhir/material/materials.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BackActionButton(),
                SizedBox(
                  width: 120,
                ),
                Text(
                  'Payment',
                  style: GoogleFonts.rubik(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 131,
            ),
            PaymentSuccess(),
          ],
        ),
      ),
    );
  }
}
