import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() {
    return Screen4State();
  }
}

class Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Profile",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
              onPressed: () {
                // TODO: navigate to calendar page
              },
              icon: const Icon(Icons.calendar_month)),
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
