import 'package:flutter/material.dart';
import 'sloka_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bhagavad Gita Hindu Bali', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF2C2C3E),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              title: Text('BAB I Arjuna Wisada Yoga', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigasi ke halaman sloka
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SlokaPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('BAB II Ringkasan isi Bhagavad-gita', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigasi ke halaman sloka
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SlokaPage(),
                  ),
                );
              },
            ),
            
            // Tambahkan list bab lainnya sesuai kebutuhan
          ],
        ),
      ),
    );
  }
}
