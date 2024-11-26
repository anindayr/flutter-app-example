import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Divider Demo | Horizontal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DividerDemoPage(),
    );
  }
}

class DividerDemoPage extends StatelessWidget {
  const DividerDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Divider Demo'),
      ),
      body: Row(
        children: [
          // Horizontal Divider Demo
          Expanded(
            child: DividerDemoHorizontal(),
          ),
        ],
      ),
    );
  }
}

class DividerDemoHorizontal extends StatelessWidget {
  const DividerDemoHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 0,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
