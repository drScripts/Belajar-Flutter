import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BackActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.only(top: 16, left: 10),
        child: SizedBox(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(100),
            ),
            child: FloatingActionButton(
              mini: true,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              elevation: 0,
              onPressed: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget categoryButton({@required String name, Function function}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      minimumSize: Size(54, 30),
      shape: StadiumBorder(),
    ),
    onPressed: (function != null) ? function : () {},
    child: Text('$name'),
  );
}

class ListProfiles extends StatelessWidget {
  final String title;
  final Function onTap;
  ListProfiles({@required this.title, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (onTap == null) ? () {} : onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 16, right: 16, top: 20),
        height: 80,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          '$title',
          style: GoogleFonts.rubik(fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class ListSettingsNoSubs extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget trailings;
  ListSettingsNoSubs({this.title, this.icon, this.trailings});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      alignment: Alignment.center,
      width: 343,
      height: 92,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        trailing: trailings,
        title: Text(
          '$title',
          style: GoogleFonts.rubik(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        leading: Icon(
          icon,
          size: 40,
          color: Colors.blue,
        ),
      ),
    );
  }
}

class ListSettingsWithSubs extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget trailings;
  final String subtitle;
  ListSettingsWithSubs({this.title, this.icon, this.trailings, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      alignment: Alignment.center,
      width: 343,
      height: 92,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        trailing: trailings,
        title: Text(
          '$title',
          style: GoogleFonts.rubik(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        leading: Icon(
          icon,
          size: 40,
          color: Colors.blue,
        ),
        subtitle: Text(
          subtitle,
          style: GoogleFonts.rubik(
            fontSize: 14,
            color: Color(0xff78746D),
          ),
        ),
      ),
    );
  }
}

class SavedFailed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/kids_saved.png',
          width: 375,
          height: 253,
        ),
        SizedBox(
          height: 32,
        ),
        Text(
          'Course not saved',
          style: GoogleFonts.rubik(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Try saving the course\nagain in a few minutes',
          textAlign: TextAlign.center,
          style: GoogleFonts.rubik(
            fontSize: 14,
            color: Color(0xff78746D),
          ),
        ),
        SizedBox(
          height: 32,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xffE3562A),
            minimumSize: Size(309, 56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          onPressed: () {
            Get.offAllNamed('/transition');
          },
          child: Text(
            'Continue',
            style: GoogleFonts.rubik(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class SavedSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/kids_saved_1.png',
          width: 375,
          height: 253,
        ),
        SizedBox(
          height: 32,
        ),
        Text(
          'Course was saved',
          style: GoogleFonts.rubik(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'You can find this course in/nyour profile',
          textAlign: TextAlign.center,
          style: GoogleFonts.rubik(
            fontSize: 14,
            color: Color(0xff78746D),
          ),
        ),
        SizedBox(
          height: 32,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xffE3562A),
            minimumSize: Size(309, 56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          onPressed: () {
            Get.offAllNamed('/transition');
          },
          child: Text(
            'Continue',
            style: GoogleFonts.rubik(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class PaymentFailed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/kids_payment.png',
          width: 375,
          height: 253,
        ),
        SizedBox(
          height: 32,
        ),
        Text(
          'No payment method',
          style: GoogleFonts.rubik(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 32,
        ),
        Text(
          'You don’t have any\npayment method',
          textAlign: TextAlign.center,
          style: GoogleFonts.rubik(
            fontSize: 16,
            color: Color(0xff78746D),
          ),
        ),
        SizedBox(
          height: 32,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Color(0xffE3562A),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            minimumSize: Size(308, 58),
          ),
          child: Text(
            'Continue',
            style: GoogleFonts.rubik(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class PaymentSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/success_payment.png',
          width: 375,
          height: 253,
        ),
        SizedBox(
          height: 32,
        ),
        Text(
          ' Payment method added',
          style: GoogleFonts.rubik(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 32,
        ),
        Text(
          'You can buy the course now.\nContinue to payment.',
          textAlign: TextAlign.center,
          style: GoogleFonts.rubik(
            fontSize: 16,
            color: Color(0xff78746D),
          ),
        ),
        SizedBox(
          height: 32,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Color(0xffE3562A),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            minimumSize: Size(308, 58),
          ),
          child: Text(
            'Continue',
            style: GoogleFonts.rubik(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class VideoCard extends StatelessWidget {
  final String title, subtitle;
  VideoCard({this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: Color(0xffFFF5EE),
      child: Column(
        children: [
          Image.asset('assets/kids_sit.png'),
          Container(
            width: double.infinity,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 10, bottom: 16),
            child: Image.asset(
              'assets/Play_Icon.png',
              width: 48,
              height: 48,
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 12, top: 24, bottom: 23),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(16),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$title',
                  style: GoogleFonts.rubik(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '$subtitle',
                  style: GoogleFonts.rubik(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff78746D),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardProgress extends StatelessWidget {
  final String title;
  final double value;
  CardProgress({this.title, this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      padding: EdgeInsets.only(left: 18, right: 18, top: 8, bottom: 8),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border.all(color: Colors.grey, width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: Offset(-1, 4),
              spreadRadius: 0.5,
              blurRadius: 10,
            )
          ]),
      child: Row(
        children: [
          Image.asset(
            'assets/kids_study.png',
            width: 100,
            height: 93,
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$title',
                  style: GoogleFonts.rubik(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  width: MediaQuery.of(context).size.width / 1.7,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: LinearProgressIndicator(
                      value: 1 * value,
                      minHeight: 12,
                      valueColor: AlwaysStoppedAnimation(Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
