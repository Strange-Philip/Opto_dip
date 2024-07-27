import 'package:fluent_ui/fluent_ui.dart';
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

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      home: NavigationView(
        appBar: const NavigationAppBar(
            title: Text(
              "Horizontal and Vertical Strabismic Deviations And Visual Defects",
              style: TextStyle(color: Color(0xffFFFFFF), fontSize: 20),
            ),
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black),
        pane: NavigationPane(
            selected: index,
            onChanged: (newIndex) {
              setState(() {
                index = newIndex;
              });
            },
            indicator: const StickyNavigationIndicator(
              color: Color(0xff0096FF),
            ),
            footerItems: [
              PaneItem(
                  icon: const Icon(FluentIcons.info),
                  title: const Text("CopyRight"),
                  body: const SizedBox()),
            ],
            displayMode: PaneDisplayMode.auto,
            items: [
              PaneItem(
                  icon: const Icon(FluentIcons.info),
                  title: const Text("Instructions"),
                  body: const InstructionPage()),
              PaneItem(
                  icon: const Icon(FluentIcons.horizontal_tab_key),
                  title: const Text("Horizontal Deviations"),
                  body: const HorizontalDip()),
              PaneItem(
                  icon: const Icon(FluentIcons.gripper_dots_vertical),
                  title: const Text("Vertical Deviations"),
                  body: const VerticalDip()),
              PaneItem(
                  icon: const Icon(FluentIcons.red_eye),
                  title: const Text("Visual Defects"),
                  body: const VisualDefects()),
            ]),
      ),
    );
  }
}
