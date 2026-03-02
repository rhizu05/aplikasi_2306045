import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String title = 'Aplikasi Pertamaku';
    String name = 'Rasyid Oktavian';
    String message = 'Halo nama saya $name, selamat datang di $title';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue, title: Text(title), centerTitle: true),
        body: Column(
          children: [
            Text(message),
            Text(message),
            Text(message),
            Text(message),
            Text(message),
            Text(message),
            Text(message),
            Text(message),
            Text(message),
          ],  
        ),
      ),
    );
  }
}
