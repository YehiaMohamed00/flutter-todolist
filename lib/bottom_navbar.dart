import 'package:flutter/material.dart';
// import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  int curNdx = 0;
  List<Map> pages = [
    {
      "title": const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Welcome Back",
              style: TextStyle(fontSize: 14, color: Colors.grey)),
          Text("Dear User"),
        ],
      ),
      "actions": [
        IconButton(
            onPressed: () {
              // TODO: navigate to calendar page
            },
            icon: const Icon(Icons.calendar_month)),
        CircleAvatar(
            backgroundColor: Colors.grey[300], child: const Icon(Icons.person))
      ]
    }
  ];
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: pages[curNdx]["title"],
        actions: pages[curNdx]["actions"],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curNdx,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: SizedBox(
                width: 30,
                child: Image.asset("lib/icons/to_do_list.png"),
              ),
              label: "Templates"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: "Reminders"),
          const BottomNavigationBarItem(icon: Icon(Icons.person_2), label: "Profile"),
        ],
      ),
    );
  }
}
