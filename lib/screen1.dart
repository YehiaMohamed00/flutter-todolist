import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() {
    return Screen1State();
  }
}

class Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome Back",
                style: TextStyle(fontSize: 14, color: Colors.grey)),
            Text("Dear User", style: TextStyle(fontWeight: FontWeight.w500)),
          ],
        ),
        actions: [
          Container(
            // width: 120,
            decoration: const BoxDecoration(
              color: Color(0xffffc263),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: const Text("👑 Get PRO", style: TextStyle(color: Colors.white)),
          ),
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
