import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'api_tool/ApiService.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Font App',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const BottomBar(),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: ApiService.fetchData('test/'),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Scaffold(body: Center(child: Text(snapshot.error.toString())));
        }

        if (snapshot.hasData) {
          return Scaffold(body: Center(child: Text(snapshot.data.toString())));
        }

        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
