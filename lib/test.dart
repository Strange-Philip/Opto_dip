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
    return Center(
      child: DiplopiaModel(),
    );
  }
}

class DiplopiaModel extends StatefulWidget {
  @override
  _DiplopiaModelState createState() => _DiplopiaModelState();
}

class _DiplopiaModelState extends State<DiplopiaModel> {
  // bool rightTrigNerveTapped = false;
  // bool leftTrigNerveTapped = false;
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
        SizedBox(
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

class EyeDiagramPainter extends CustomPainter {
  final double horizontalOffset;
  final double verticalOffset;

  EyeDiagramPainter(this.horizontalOffset, this.verticalOffset);

  @override
  void paint(Canvas canvas, Size size) {
    final eyePaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final leftEyeRect = Rect.fromLTWH(
      size.width * 0.2 - horizontalOffset,
      size.height * 0.4 - verticalOffset,
      size.width * 0.3,
      size.height * 0.2,
    );

    final rightEyeRect = Rect.fromLTWH(
      size.width * 0.5 + horizontalOffset,
      size.height * 0.4 - verticalOffset,
      size.width * 0.3,
      size.height * 0.2,
    );

    canvas.drawOval(leftEyeRect, eyePaint);
    canvas.drawOval(rightEyeRect, eyePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
