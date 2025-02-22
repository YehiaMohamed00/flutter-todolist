import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() {
    return Screen3State();
  }
}

class Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Reminders",
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
