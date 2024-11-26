import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Divider Demo',
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
          // Vertical Divider Demo
          Expanded(
            child: DividerDemoVertical(),
          ),
        ],
      ),
    );
  }
}

class DividerDemoVertical extends StatelessWidget {
  const DividerDemoVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
              ),
            ),
            const VerticalDivider(
              color: Colors.grey,
              thickness: 1,
              indent: 20,
              endIndent: 0,
              width: 20,
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
