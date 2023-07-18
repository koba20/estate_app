import 'package:flutter/material.dart';

class ExpandableListScreen extends StatefulWidget {
  @override
  _ExpandableListScreenState createState() => _ExpandableListScreenState();
}

class _ExpandableListScreenState extends State<ExpandableListScreen> {
  List<Item> items = [
    Item('Lorem ipsum dolor sit amet, consec adipiscing elit. Aenean commodo.',
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, nec, pellentesque eu."),
    Item('Lorem ipsum dolor sit amet, consec adipiscing elit. Aenean commodo.',
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, nec, pellentesque eu."),
    Item('Lorem ipsum dolor sit amet, consec adipiscing elit. Aenean commodo.',
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, nec, pellentesque eu."),
    Item('Lorem ipsum dolor sit amet, consec adipiscing elit. Aenean commodo.',
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, nec, pellentesque eu."),
    Item('Lorem ipsum dolor sit amet, consec adipiscing elit. Aenean commodo.',
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, nec, pellentesque eu."),
    Item('Lorem ipsum dolor sit amet, consec adipiscing elit. Aenean commodo.',
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, nec, pellentesque eu."),
    Item('Lorem ipsum dolor sit amet, consec adipiscing elit. Aenean commodo.',
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, nec, pellentesque eu."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: const Text(
          'FAQs',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        leading: Transform.scale(
          scale: 0.7,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.black,
                )),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.symmetric(vertical: 15),
            child: ExpansionTile(
              title: Text(
                items[index].title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(items[index].additionalInfo),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Item {
  final String title;
  final String additionalInfo;

  Item(this.title, this.additionalInfo);
}
