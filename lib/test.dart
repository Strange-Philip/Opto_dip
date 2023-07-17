import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TestContainer extends StatefulWidget {
  const TestContainer({super.key});

  @override
  State<TestContainer> createState() => _TestContainerState();
}

class _TestContainerState extends State<TestContainer> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: DiplopiaModel(),
    );
  }
}

class DiplopiaModel extends StatefulWidget {
  const DiplopiaModel({super.key});

  @override
  _DiplopiaModelState createState() => _DiplopiaModelState();
}

class _DiplopiaModelState extends State<DiplopiaModel> {
  bool leftGaze = false;
  bool rightGaze = false;
  bool upGaze = false;
  bool downGaze = false;
  bool normalGaze = true;
  String directionText = 'Center';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Listener(
            onPointerHover: (event) {
              final position = event.localPosition;
              setState(() {
                directionText = calculateDirection(position);
              });
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.precise,
              child: Container(
                height: 300,
                width: 500,
                padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 100),
                decoration: BoxDecoration(
                    border: Border.all(
                  width: 2,
                  color: Colors.lightBlue,
                )),
                child: SvgPicture.asset(
                  'images/${leftGaze ? "right" : rightGaze ? "left" : upGaze ? "up" : downGaze ? "down" : "normal"}-gaze.svg',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            "$directionText gaze",
            style: const TextStyle(color: Color(0xff000000), fontSize: 16),
          ),
        ),
      ],
    );
  }

  String calculateDirection(Offset position) {
    const centerX = 250.0; // Half the width of the container
    const centerY = 150.0; // Half the height of the container
    const threshold = 50.0; // Distance from center considered as "center"

    if ((position.dx - centerX).abs() <= threshold && (position.dy - centerY).abs() <= threshold) {
      setState(() {
        leftGaze = false;
        rightGaze = false;
        downGaze = false;
        upGaze = false;
        normalGaze = true;
      });
      return 'Center';
    } else if (position.dx > centerX && (position.dx - centerX).abs() > threshold) {
      setState(() {
        leftGaze = false;
        rightGaze = true;
        downGaze = false;
        upGaze = false;
        normalGaze = false;
      });
      return 'Right';
    } else if (position.dx < centerX && (position.dx - centerX).abs() > threshold) {
      setState(() {
        leftGaze = true;
        rightGaze = false;
        downGaze = false;
        upGaze = false;
        normalGaze = false;
      });
      return 'Left';
    } else if (position.dy > centerY && (position.dy - centerY).abs() > threshold) {
      setState(() {
        leftGaze = false;
        rightGaze = false;
        downGaze = true;
        upGaze = false;
        normalGaze = false;
      });
      return 'Down';
    } else if (position.dy < centerY && (position.dy - centerY).abs() > threshold) {
      setState(() {
        leftGaze = false;
        rightGaze = false;
        downGaze = false;
        upGaze = true;
        normalGaze = false;
      });
      return 'Up';
    } else {
      setState(() {
        leftGaze = false;
        rightGaze = false;
        downGaze = false;
        upGaze = false;
        normalGaze = true;
      });
      return 'Center';
    }
  }
}
