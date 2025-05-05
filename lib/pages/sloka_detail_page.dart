import 'package:flutter/material.dart';

class SlokaDetailPage extends StatelessWidget {
  final String slokaTitle;

  const SlokaDetailPage({required this.slokaTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Sloka', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF2C2C3E),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.bookmark_border), // Bookmark icon
            onPressed: () {
              // Implementasikan fitur untuk menandai sebagai favorit
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Menampilkan judul sloka
            Text(
              slokaTitle,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            // Menampilkan teks sloka (dummy text)
            Text(
              'Lorem ipsum is simply dummy text of the Lorem ipsum is simply dummy text of the Lorem ipsum is simply dummy text...',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 16),
            // Menampilkan arti (dummy text)
            Text(
              'Arti: Lorem ipsum is simply dummy text of the Lorem ipsum is simply dummy text...',
              style: TextStyle(fontSize: 14),
            ),
            Spacer(),
            // Tombol Putar Audio & Replay
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Tombol Play Audio
                  IconButton(
                    icon: Icon(Icons.play_arrow, size: 40),
                    onPressed: () {
                      // Implementasikan fungsi untuk memutar audio
                    },
                  ),
                  SizedBox(width: 30),
                  // Tombol Replay Audio
                  IconButton(
                    icon: Icon(Icons.refresh, size: 40),
                    onPressed: () {
                      // Implementasikan fungsi untuk mengulang audio
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}