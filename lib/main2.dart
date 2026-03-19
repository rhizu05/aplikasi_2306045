import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: Icon(Icons.home),
          title: Text('Home Page'),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(children: [Icon(Icons.archive), Text("Artikel Baru")]),
              Card(
                child: Column(
                  children: [
                    Image.network(
                      "https://cdn.pixabay.com/photo/2015/06/19/21/24/the-road-815297_1280.jpg",
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Kekuatan Pohon: Simbol Ketahanan dan Kehidupan",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Pohon telah menjadi simbol kehidupan sejak zaman kuno. Dengan akar yang menancap dalam ke tanah dan cabang yang menjulang tinggi ke langit, pohon mengajarkan kita tentang keseimbangan antara kekuatan dan fleksibilitas. Seperti pohon yang berdiri kokoh di tengah padang rumput saat matahari terbenam, kita juga harus belajar untuk tetap teguh dalam menghadapi perubahan. Setiap musim, pohon mengalami transformasi - dari dedaunan hijau yang lebat hingga rontok di musim gugur, namun selalu tumbuh kembali. Begitu pula dalam hidup kita, masa-masa sulit adalah bagian dari siklus yang akan membawa kita pada pertumbuhan baru.",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Komentar',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  _buildCommentCard('Rasyid', 'Lorem ipsum dolor sit amet.'),
                  _buildCommentCard('Irham', 'Lorem ipsum dolor sit amet.'),
                  _buildCommentCard('Restu', 'Lorem ipsum dolor sit amet.'),
                  _buildCommentCard('Fahmi', 'Lorem ipsum dolor sit amet.'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function untuk membuat Card Komentar
  Widget _buildCommentCard(String name, String comment) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(name), Text(comment)],
        ),
      ),
    );
  }
}