import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_database_in_pure_dart/model/monster.dart';
import 'package:hive_database_in_pure_dart/view/main_page.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:hive/hive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var appDoc = await pathProvider.getApplicationDocumentsDirectory();
  Hive.init(appDoc.path);
  Hive.registerAdapter(MonsterAdapter());
  runApp(MyApp());
}

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
