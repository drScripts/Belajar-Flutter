import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_architecture/UI/user_card.dart';
import 'package:mvvm_architecture/bloc/user_bloc.dart';
import 'package:mvvm_architecture/model/user.dart';
import 'dart:math';

class MainPage extends StatelessWidget {
  final Random rand = Random();
  @override
  Widget build(BuildContext context) {
    UserBloc bloc = BlocProvider.of<UserBloc>(context);
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        title: Text('User Data With MVVM'),
        backgroundColor: Colors.pink[100],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text('Pick Random User'),
            color: Colors.redAccent,
            onPressed: () {
              bloc.dispatch(rand.nextInt(11));
            },
          ),
          BlocBuilder<UserBloc, User>(
              builder: (context, user) =>
                  (user is UninitializeUser) ? Container() : UserCard(user)),
        ],
      ),
    );
  }
}
