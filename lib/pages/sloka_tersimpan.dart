import 'package:flutter/material.dart';
import 'sloka_detail.dart';

class SlokaTersimpanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sloka Tersimpan'),
      ),
      body: ListView(
        children: <Widget>[
          savedSlokaCard(context, "Sloka 1.2", "Lorem ipsum is simply dummy text of the"),
          // Add more saved slokas as needed
        ],
      ),
    );
  }

  Widget savedSlokaCard(BuildContext context, String title, String description) {
    return Card(
      color: Color(0xFF2f2b43), // Set the background color to purple
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(color: Colors.white), // Text color is white
        ),
        subtitle: Text(
          description,
          style: TextStyle(color: Colors.white), // Text color is white
        ),
        trailing: Icon(
          Icons.arrow_forward,
          color: Colors.white, // Arrow icon color is white
        ),
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
