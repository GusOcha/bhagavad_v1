import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

class SlokaDetailPage extends StatefulWidget {
  final String title;

  SlokaDetailPage({required this.title});

  @override
  _SlokaDetailPageState createState() => _SlokaDetailPageState();
}

class _SlokaDetailPageState extends State<SlokaDetailPage> {
  late Audio _audio;

  @override
  void initState() {
    super.initState();
    _audio = Audio.load('path_to_audio_file.mp3');
  }

  void _playAudio() {
    _audio.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Sloka'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Row to display "Detail Sloka" text and buttons aligned horizontally
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      widget.title,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.bookmark,
                            color: Color(0xFF2f2b43),
                            size: 30,
                          ),
                          onPressed: () {
                            // Implement bookmarking functionality
                          },
                        ),
                        SizedBox(width: 10),
                        IconButton(
                          icon: Icon(
                            Icons.share,
                            color: Color(0xFF2f2b43),
                            size: 30,
                          ),
                          onPressed: () {
                            // Implement share functionality
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text('Sansekerta: Lorem ipsum is simply dummy text of the Lorem ipsum ...', style: TextStyle(fontSize: 16)),
                SizedBox(height: 20),
                Text('Arti: Lorem ipsum is simply dummy text of the Lorem ipsum ...', style: TextStyle(fontSize: 16)),
                SizedBox(height: 20),
              ],
            ),
            // Centered "Putar Audio" button (Floating button)
            Align(
              alignment: Alignment.center,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2f2b43), // Button background color
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50), // Circular shape for floating effect
                  ),
                ),
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white, // Icon color
                ),
                label: SizedBox.shrink(), // No text
                onPressed: _playAudio,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
