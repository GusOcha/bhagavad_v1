import 'package:flutter/material.dart';
import 'sloka_detail_page.dart';

class SlokaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sloka Bhagavad Gita', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF2C2C3E),
      ),
      body: ListView(
        children: [
          SlokaCard(
            slokaTitle: 'Sloka 1.1',
            slokaDescription: 'Lorem ipsum is simply dummy text of the...',
          ),
          SlokaCard(
            slokaTitle: 'Sloka 1.2',
            slokaDescription: 'Lorem ipsum is simply dummy text of the...',
          ),
          // Tambahkan sloka lainnya
        ],
      ),
    );
  }
}

class SlokaCard extends StatelessWidget {
  final String slokaTitle;
  final String slokaDescription;

  const SlokaCard({
    required this.slokaTitle,
    required this.slokaDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 5,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        title: Text(
          slokaTitle,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text(slokaDescription),
        trailing: Icon(Icons.arrow_drop_down),
        onTap: () {
          // Navigasi ke halaman detail Sloka dengan tombol "Baca Selengkapnya"
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SlokaDetailPage(slokaTitle: slokaTitle),
            ),
          );
        },
      ),
    );
  }
}