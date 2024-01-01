import 'package:flutter/material.dart';

class ControlScreen extends StatelessWidget {
  const ControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Control Screen'),
      ),
      body: const Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: null,
              child: Text('Screen 1'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: null,
              child: Text('Screen 2'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: null,
              child: Text('Screen 3'),
            ),
          ],
        ),
      ),
    );
  }
}
