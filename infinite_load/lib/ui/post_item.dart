import 'package:flutter/material.dart';
import 'package:infinite_load/models/data_models.dart';

class PostItem extends StatelessWidget {
  final DataModels data;
  PostItem({this.data});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(data.id.toString()),
          Container(
            width: MediaQuery.of(context).size.width - 90 * (7 / 8),
            child: Column(
              children: [
                Text(data.title),
                Text(data.body),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
