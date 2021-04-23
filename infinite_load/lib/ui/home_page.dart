import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_load/bloc/data_bloc.dart';
import 'package:infinite_load/ui/post_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController controller = ScrollController();
  DataBloc bloc;

  void onScroll() {
    double maxScroll = controller.position.maxScrollExtent;
    double currentScroll = controller.position.pixels;

    if (currentScroll == maxScroll) {
      bloc.add(InitEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    bloc = BlocProvider.of<DataBloc>(context);
    controller.addListener(onScroll);
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Guys'),
      ),
      body: BlocBuilder<DataBloc, DataState>(
        builder: (context, state) {
          if (state is DataInitial) {
            return Center(
              child: SizedBox(
                width: 30,
                height: 30,
                child: CircularProgressIndicator(),
              ),
            );
          } else {
            DataLoaded postLoaded = state as DataLoaded;
            return ListView.builder(
              controller: controller,
              itemCount: (postLoaded.hasReachMax) ? postLoaded.data.length : postLoaded.data.length + 1, // 1 untuk progress bar
              itemBuilder: (context, index) {
                return (index < postLoaded.data.length)
                    ? Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: PostItem(data: postLoaded.data[index]),
                      )
                    : Container(
                        child: Center(
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      );
              },
            );
          }
        },
      ),
    );
  }
}
