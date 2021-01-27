import 'package:drop_down_button/ui/person.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Person selectedPerson;
  List<Person> persons = [
    Person("Joni"),
    Person("Joko"),
    Person("Nathan"),
  ];
  List<DropdownMenuItem> generateItem(List<Person> persons) {
    List<DropdownMenuItem> items = [];
    for (var item in persons) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        title: Text('Drop Down Button'),
        backgroundColor: Colors.pink[100],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(16),
              ),
              child: DropdownButton(
                isExpanded: true,
                hint: Text('Select Person'),
                value: selectedPerson,
                items: generateItem(persons),
                onChanged: (item) {
                  setState(() {
                    selectedPerson = item;
                  });
                },
              ),
            ),
            Text((selectedPerson != null) ? selectedPerson.name : 'Data'),
          ],
        ),
      ),
    );
  }
}
