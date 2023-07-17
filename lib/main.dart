import 'package:fluent_ui/fluent_ui.dart';
import 'package:orthoptics/instructions.dart';
import 'package:orthoptics/verticalDip.dart';
import 'package:orthoptics/horizontalDip.dart';
import 'package:orthoptics/test.dart';

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
      // ignore: deprecated_member_use
      // theme: ThemeData(
      //     scaffoldBackgroundColor: Colors.white,
      //     accentColor: Colors.blue,
      //     iconTheme: const IconThemeData(size: 24)),
      // // ignore: deprecated_member_use
      // darkTheme: ThemeData(
      //     scaffoldBackgroundColor: Colors.white,
      //     accentColor: Colors.blue,
      //     iconTheme: const IconThemeData(size: 24)),
      home: NavigationView(
        appBar: const NavigationAppBar(
            title: Text(
              "Orthoptics Project",
              style: TextStyle(color: Color(0xffFFFFFF), fontSize: 20),
            ),
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xff0096FF)),
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
            displayMode: PaneDisplayMode.auto,
            items: [
              PaneItem(
                  icon: const Icon(FluentIcons.info),
                  title: const Text("Instructions"),
                  body: const InstructionPage()),
              PaneItem(
                  icon: const Icon(FluentIcons.gripper_dots_vertical),
                  title: const Text("Vertical Diplopia"),
                  body: const VerticalDip()),
              PaneItem(
                  icon: const Icon(FluentIcons.horizontal_tab_key),
                  title: const Text("Horizontal Diplopia"),
                  body: const HorizontalDip()),
              PaneItem(
                  icon: const Icon(FluentIcons.red_eye),
                  title: const Text("Test"),
                  body: const TestContainer()),
            ]),
      ),
    );
  }
}
