import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isAvailable = false;
  bool isAuthenticated = false;
  String text = "Please Check Biometric Avability";
  LocalAuthentication localAuth = LocalAuthentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biometric Authentication'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              margin: EdgeInsets.only(bottom: 6),
              child: ElevatedButton(
                onPressed: () async {
                  isAvailable = await localAuth.canCheckBiometrics;
                  if (isAvailable) {
                    List<BiometricType> type =
                        await localAuth.getAvailableBiometrics();

                    text = "Biometrics Available";

                    for (var item in type) {
                      text += "\n- $item";
                    }

                    setState(() {});
                  }
                },
                child: Text(
                  'Check Biometric',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: (isAvailable)
                    ? () async {
                        isAuthenticated = await localAuth.authenticate(
                            biometricOnly: true,
                            localizedReason: "Please Authentication",
                            stickyAuth: true,
                            useErrorDialogs: true);
                        setState(() {});
                      }
                    : null,
                child: Text(
                  'Authenticate',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (isAuthenticated) ? Colors.green : Colors.red,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3,
                      spreadRadius: 2,
                    )
                  ]),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.grey[200],
              child: Center(
                child: Text(
                  text,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
