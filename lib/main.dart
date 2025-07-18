import 'package:flutter/material.dart';
import 'package:orthoptics/instructions.dart';
import 'package:orthoptics/verticalDip.dart';
import 'package:orthoptics/horizontalDip.dart';
import 'package:orthoptics/visual_defects.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;

  final List<Widget> pages = [
    const InstructionPage(),
    const HorizontalDip(),
    const VerticalDip(),
    const VisualDefects(),
  ];

  final List<BottomNavigationBarItem> navItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.info),
      label: "Instructions",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.horizontal_rule),
      label: "Horizontal Deviations",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.more_vert),
      label: "Vertical Deviations",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.remove_red_eye),
      label: "Visual Defects",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Horizontal and Vertical Strabismic Deviations And Visual Defects",
            style: TextStyle(color: Color(0xffFFFFFF), fontSize: 20),
          ),
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
        ),
        body: pages[index],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: (newIndex) {
            setState(() {
              index = newIndex;
            });
          },
          selectedItemColor: const Color(0xff0096FF),
          unselectedItemColor: Colors.grey,
          items: navItems,
        ),
      ),
    );
  }
}
