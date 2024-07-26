import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() {
    return Screen2State();
  }
}

class Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello 👋",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        actions: [
          CircleAvatar(
              backgroundColor: Colors.grey[300], child: const Icon(Icons.person)),
          const SizedBox(width: 5),
        ],
      ),
      body: Container(
        color: Colors.grey[100],
      ),
    );
  }
}
