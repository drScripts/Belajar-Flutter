import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:review_bloc_cubit_replay_2/bloc/counterb_bloc.dart';
import 'package:review_bloc_cubit_replay_2/cubit/counterc_cubit.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.black,
              height: double.infinity,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Bloc State Management",
                      style: GoogleFonts.poppins(
                          fontSize: 25, color: Colors.white)),
                  BlocBuilder<CounterbBloc, CounterbState>(
                    builder: (_, state) => Text(
                        (state is InitilizeBCounter) ? '${state.number}' : '-',
                        style: GoogleFonts.poppins(
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //// BLOC INCREMENT
                      context.read<CounterbBloc>().add(AddInts());
                    },
                    child: Text("+",
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w600)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          //// BLOC UNDO
                          context.read<CounterbBloc>().undo();
                        },
                        child: Text("Undo",
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          //// BLOC REDO
                          context.read<CounterbBloc>().redo();
                        },
                        child: Text("Redo",
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w600)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Cubit State Management",
                      style: GoogleFonts.poppins(
                        fontSize: 25,
                      )),
                  BlocBuilder<CountercCubit, CountercState>(
                    builder: (_, state) => Text(
                        (state is InitializecCounter) ? '${state.number}' : '-',
                        style: GoogleFonts.poppins(
                            fontSize: 35, fontWeight: FontWeight.w600)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //// CUBIT INCREMENT
                      context.read<CountercCubit>().increment();
                    },
                    child: Text("+",
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w600)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          //// CUBIT UNDO
                          context.read<CountercCubit>().undo();
                        },
                        child: Text("Undo",
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          //// CUBIT REDO
                          context.read<CountercCubit>().redo();
                        },
                        child: Text("Redo",
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w600)),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
