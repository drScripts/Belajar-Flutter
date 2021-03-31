// import 'package:crud_cloud_firestore/services/auth_services.dart';
// import 'package:flutter/material.dart';

// class LoginPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     TextEditingController emailController = TextEditingController(text: "");
//     TextEditingController passController = TextEditingController(text: "");
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login Page'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               width: 350,
//               child: TextField(
//                 controller: emailController,
//                 decoration: InputDecoration(
//                   prefixIcon: Icon(Icons.email),
//                   hintText: "Input Your Email",
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 15),
//               width: 350,
//               child: TextField(
//                 obscureText: true,
//                 controller: passController,
//                 decoration: InputDecoration(
//                   prefixIcon: Icon(Icons.vpn_key),
//                   hintText: "Input Your PassWord",
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 50),
//               width: 300,
//               child: ElevatedButton(
//                 onPressed: () async {
//                   await AuthServices().signIn(
//                       email: emailController.text,
//                       password: passController.text);
//                 },
//                 child: Text('Login In'),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 10),
//               width: 300,
//               child: ElevatedButton(
//                 onPressed: () async {
//                   await AuthServices().signUp(
//                       email: emailController.text,
//                       password: passController.text);
//                 },
//                 child: Text('Sign Up'),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 10),
//               width: 300,
//               child: ElevatedButton(
//                 onPressed: () async {
//                   await AuthServices().signInAnonymous();
//                 },
//                 child: Text('Sign In Anonymously'),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
