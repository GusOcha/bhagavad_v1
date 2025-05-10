import 'package:flutter/material.dart';
import 'sloka_detail.dart';

class SlokaPage extends StatelessWidget {
  final String title;

  SlokaPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: <Widget>[
          slokaCard(context, "Sloka 1.1", "Lorem ipsum is simply dummy text of the"),
          slokaCard(context, "Sloka 1.2", "Lorem ipsum is simply dummy text of the"),
          // Add more slokas as needed
        ],
      ),
    );
  }

  Widget slokaCard(BuildContext context, String title, String description) {
    return Card(
      color: Color(0xFF2f2b43),
      child: ListTile(
        title: Text(title, style: TextStyle(color: Colors.white),),
        subtitle: Text(description, style: TextStyle(color: Colors.white),),
        trailing: Icon(Icons.arrow_forward, color: Colors.white,),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SlokaDetailPage(title: title)),
          );
        },
      ),
    );
  }
}
