import 'package:bhagavad_gita_app/pages/sloka_tersimpan.dart';
import 'package:flutter/material.dart';
import 'sloka_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bhagavad Gita Hindu Bali'),
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              chapterCard(context, "BAB 1 Arjuna Wisada Yoga", 2),
              chapterCard(context, "BAB II Ringkasan isi Bhagavad-gita", 2),
              chapterCard(context, "BAB III", 2),
              chapterCard(context, "BAB IV", 2),
              chapterCard(context, "BAB V", 2),
              SizedBox(height: 20),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2f2b43), // Button background color
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                icon: Icon(
                  Icons.bookmark,
                  color: Colors.white, // Bookmark icon color
                ),
                label: Text(
                  "Sloka Tersimpan",
                  style: TextStyle(color: Colors.white), // Text color
                ),
                onPressed: () {
                  // Navigate to Saved Slokas Page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SlokaTersimpanPage()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget chapterCard(BuildContext context, String title, int slokaCount) {
    return Card(
      color: Color(0xFF2f2b43), // Set the background color to purple
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(color: Colors.white), // Text color is white
        ),
        subtitle: Text(
          "Terdapat $slokaCount Sloka",
          style: TextStyle(color: Colors.white), // Text color is white
        ),
        trailing: Icon(
          Icons.arrow_forward,
          color: Colors.white, // Arrow icon color is white
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SlokaPage(title: title)),
          );
        },
      ),
    );
  }
}
