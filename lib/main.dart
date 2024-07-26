import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';
import 'screen4.dart';
import 'package:flutter/cupertino.dart';

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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  PersistentTabController tabController =
      PersistentTabController(initialIndex: 0);
  bool isProfileScreen = false;

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        icon: const Icon(Icons.home),
        title: "Home",
        activeColorPrimary: CupertinoColors.activeBlue,
        activeColorSecondary: Colors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        icon: const Icon(Icons.ballot_rounded),
        title: "Templates",
        activeColorPrimary: CupertinoColors.activeBlue,
        activeColorSecondary: Colors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        icon: const Icon(Icons.calendar_month),
        title: "Reminders",
        activeColorPrimary: CupertinoColors.activeBlue,
        activeColorSecondary: Colors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        icon: const Icon(Icons.person),
        title: "Profile",
        activeColorPrimary: CupertinoColors.activeBlue,
        activeColorSecondary: Colors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  List<Widget> _screens() {
    return [const Screen1(), const Screen2(), const Screen3(), const Screen4()];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _screens(),
      items: _navBarItems(),
      controller: tabController,
      navBarHeight: 70,
      navBarStyle: NavBarStyle.style7,
      onItemSelected: (value) {
        setState(() {
          // print(value);
          isProfileScreen = value == 3 ? true : false;
        });
      },
      floatingActionButton: isProfileScreen
          ? const SizedBox(
              width: 0,
              height: 0,
            )
          : Container(
              padding: const EdgeInsets.all(15),
              width: 100,
              height: 100,
              child: FittedBox(
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: CupertinoColors.activeBlue,
                  shape: const CircleBorder(),
                  child: const Icon(Icons.add, color: Colors.white),
                ),
              )),
    );
  }
}
