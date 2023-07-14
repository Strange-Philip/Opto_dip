import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum MouseDirection { left, right, up, down, center }

class HorizontalDip extends StatefulWidget {
  const HorizontalDip({super.key});

  @override
  State<HorizontalDip> createState() => _HorizontalDipState();
}

class _HorizontalDipState extends State<HorizontalDip> {
  bool rightOccNerveTapped = false;
  bool leftOccNerveTapped = false;
  bool rightAbducensNerveTapped = false;
  bool leftAbducensTapped = false;
  bool leftGaze = false;
  bool rightGaze = false;
  bool upGaze = false;
  bool downGaze = false;
  bool normalGaze = true;
  String directionText = 'Center';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  leftOccNerveTapped == true && rightOccNerveTapped == true
                      ? "Both Oculomotor Nerves Damage"
                      : rightOccNerveTapped == true
                          ? "Right Oculomotor Nerve Damage"
                          : leftOccNerveTapped == true
                              ? "Left Oculomotor Nerve Damage"
                              : leftAbducensTapped == true && rightAbducensNerveTapped == true
                                  ? "Both Abducens nerves Damage"
                                  : leftAbducensTapped == true
                                      ? "Left Abducens nerve Damage"
                                      : rightAbducensNerveTapped == true
                                          ? "Right Abducens nerve Damage"
                                          : "No Damage",
                  style: const TextStyle(color: Colors.red, fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Image.asset(
                      'images/horiz_image.png',
                      width: 500,
                      height: 500,
                    ),
                    Positioned(
                      top: 140,
                      left: 160,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              rightOccNerveTapped = !rightOccNerveTapped;
                              leftAbducensTapped = false;
                              rightAbducensNerveTapped = false;
                            });
                            debugPrint('Right occulomotor nerve tapped');
                          },
                          child: Container(
                            width: 8,
                            height: 190,
                            decoration: BoxDecoration(
                              color: rightOccNerveTapped ? Colors.red : Colors.transparent,
                              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(6)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 325,
                      left: 160,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              rightOccNerveTapped = !rightOccNerveTapped;
                              leftAbducensTapped = false;
                              rightAbducensNerveTapped = false;
                            });
                            debugPrint('Right occulomotor nerve tapped');
                          },
                          child: Container(
                            width: 55,
                            height: 8,
                            decoration: BoxDecoration(
                                color: rightOccNerveTapped ? Colors.red : Colors.transparent,
                                borderRadius:
                                    const BorderRadius.only(bottomLeft: Radius.circular(10))),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 325,
                      left: 272,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              leftOccNerveTapped = !leftOccNerveTapped;
                              leftAbducensTapped = false;
                              rightAbducensNerveTapped = false;
                            });
                            debugPrint('Left occulomotor nerve tapped');
                          },
                          child: Container(
                            width: 75,
                            height: 8,
                            decoration: BoxDecoration(
                                color: leftOccNerveTapped ? Colors.red : Colors.transparent,
                                borderRadius:
                                    const BorderRadius.only(bottomRight: Radius.circular(6))),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 140,
                      left: 340,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              leftOccNerveTapped = !leftOccNerveTapped;
                              leftAbducensTapped = false;
                              rightAbducensNerveTapped = false;
                            });
                            debugPrint('Left occulomotor nerve tapped');
                          },
                          child: Container(
                            width: 8,
                            height: 190,
                            decoration: BoxDecoration(
                                color: leftOccNerveTapped ? Colors.red : Colors.transparent,
                                borderRadius:
                                    const BorderRadius.only(bottomRight: Radius.circular(6))),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 314,
                      left: 212,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              rightOccNerveTapped = !rightOccNerveTapped;
                              leftAbducensTapped = false;
                              rightAbducensNerveTapped = false;
                            });
                            debugPrint('Right occulomotor nerve tapped');
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: rightOccNerveTapped ? Colors.red : Colors.transparent,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 314,
                      left: 258,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              leftOccNerveTapped = !leftOccNerveTapped;
                              leftAbducensTapped = false;
                              rightAbducensNerveTapped = false;
                            });
                            debugPrint('Left occulomotor nerve tapped');
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: leftOccNerveTapped ? Colors.red : Colors.transparent,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 423,
                      left: 253,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              leftAbducensTapped = !leftAbducensTapped;
                              leftOccNerveTapped = false;
                              rightOccNerveTapped = false;
                            });
                            debugPrint('Left Abducens nerve tapped');
                          },
                          child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: leftAbducensTapped ? Colors.red : Colors.transparent,
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 443,
                      left: 264,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              leftAbducensTapped = !leftAbducensTapped;
                              leftOccNerveTapped = false;
                              rightOccNerveTapped = false;
                            });
                            debugPrint('Left Abducens nerve tapped');
                          },
                          child: Container(
                              width: 8,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: leftAbducensTapped ? Colors.red : Colors.transparent,
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 465,
                      left: 265,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              leftAbducensTapped = !leftAbducensTapped;
                              leftOccNerveTapped = false;
                              rightOccNerveTapped = false;
                            });
                            debugPrint('Left Abducens nerve tapped');
                          },
                          child: Container(
                            width: 135,
                            height: 8,
                            decoration: BoxDecoration(
                                color: leftAbducensTapped ? Colors.red : Colors.transparent,
                                borderRadius:
                                    const BorderRadius.only(bottomRight: Radius.circular(6))),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 75,
                      left: 395,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              leftAbducensTapped = !leftAbducensTapped;
                              leftOccNerveTapped = false;
                              rightOccNerveTapped = false;
                            });
                            debugPrint('Left Abducens nerve tapped');
                          },
                          child: Container(
                            width: 8,
                            height: 397,
                            decoration: BoxDecoration(
                                color: leftAbducensTapped ? Colors.red : Colors.transparent,
                                borderRadius:
                                    const BorderRadius.only(bottomRight: Radius.circular(6))),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 75,
                      left: 88,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              rightAbducensNerveTapped = !rightAbducensNerveTapped;
                              leftOccNerveTapped = false;
                              rightOccNerveTapped = false;
                            });
                            debugPrint('Right Abducens nerve tapped');
                          },
                          child: Container(
                            width: 8,
                            height: 397,
                            decoration: BoxDecoration(
                                color: rightAbducensNerveTapped ? Colors.red : Colors.transparent,
                                borderRadius:
                                    const BorderRadius.only(bottomLeft: Radius.circular(6))),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 450,
                      left: 228,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              rightAbducensNerveTapped = !rightAbducensNerveTapped;
                              leftOccNerveTapped = false;
                              rightOccNerveTapped = false;
                            });
                            debugPrint('Right Abducens nerve tapped');
                          },
                          child: Container(
                            width: 8,
                            height: 20,
                            decoration: BoxDecoration(
                                color: rightAbducensNerveTapped ? Colors.red : Colors.transparent,
                                borderRadius:
                                    const BorderRadius.only(bottomRight: Radius.circular(6))),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 422,
                      left: 217,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              rightAbducensNerveTapped = !rightAbducensNerveTapped;
                              leftOccNerveTapped = false;
                              rightOccNerveTapped = false;
                            });
                            debugPrint('Right Abducens nerve tapped');
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: rightAbducensNerveTapped ? Colors.red : Colors.transparent,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 464,
                      left: 90,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              rightAbducensNerveTapped = !rightAbducensNerveTapped;
                              leftOccNerveTapped = false;
                              rightOccNerveTapped = false;
                            });
                            debugPrint('Right Abducens nerve tapped');
                          },
                          child: Container(
                            width: 145,
                            height: 8,
                            decoration: BoxDecoration(
                                color: rightAbducensNerveTapped ? Colors.red : Colors.transparent,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Container(
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Results",
                    style: TextStyle(color: Color(0xff000000), fontSize: 30),
                  ),
                  Text(
                    rightOccNerveTapped == true && leftOccNerveTapped == false
                        ? "Name: Right CN III Palsy"
                        : rightOccNerveTapped == false && leftOccNerveTapped == true
                            ? "Name: Left CN III Palsy"
                            : rightOccNerveTapped == true && leftOccNerveTapped == true
                                ? "Name: CN III Palsy on Both Eyes"
                                : rightAbducensNerveTapped == true && leftAbducensTapped == false
                                    ? "Name: Right Sixth Nerve Palsy"
                                    : rightAbducensNerveTapped == false &&
                                            leftAbducensTapped == true
                                        ? "Name: Left Sixth Nerve Palsy"
                                        : rightAbducensNerveTapped == true &&
                                                leftAbducensTapped == true
                                            ? "Name: Sixth Nerve Palsy on Both Eyes"
                                            : "Normal",
                    style: const TextStyle(color: Color(0xff000000), fontSize: 24),
                  ),
                  Text(
                    rightOccNerveTapped == true || leftOccNerveTapped == true
                        ? "Signs: Defective superior rectus, inferior rectus, inferior oblique, ptosis, mydriasis"
                        : leftAbducensTapped == true || rightAbducensNerveTapped == true
                            ? "Signs: Defective superior oblique, head tilt, hypertropia "
                            : "",
                    style: const TextStyle(color: Color(0xff000000), fontSize: 24),
                  ),
                  Text(
                    rightOccNerveTapped == true || leftOccNerveTapped == true
                        ? "Symptoms: Vertical diplopia, pain, vision loss due to ptosis \nCause of lesion: Trauma,ataxia, aneurysm"
                        : leftAbducensTapped == true || rightAbducensNerveTapped == true
                            ? "Symptoms: Horizontal diplopia "
                            : "",
                    style: const TextStyle(color: Color(0xff000000), fontSize: 24),
                  ),
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
                          height: 200,
                          width: 400,
                          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 100),
                          decoration: BoxDecoration(
                              border: Border.all(
                            width: 2,
                            color: Colors.lightBlue,
                          )),
                          child: SvgPicture.asset(
                            rightOccNerveTapped == true && leftOccNerveTapped == false
                                ? "images/${leftGaze ? "rg" : rightGaze ? "lg" : "ng"}-right-3palsy.svg"
                                : rightOccNerveTapped == false && leftOccNerveTapped == true
                                    ? "images/${leftGaze ? "rg" : rightGaze ? "lg" : "ng"}-left-3palsy.svg"
                                    : rightAbducensNerveTapped == true &&
                                            leftAbducensTapped == false
                                        ? "images/${leftGaze ? "rg" : rightGaze ? "lg" : "ng"}-right-6palsy.svg"
                                        : rightAbducensNerveTapped == false &&
                                                leftAbducensTapped == true
                                            ? "images/${leftGaze ? "rg" : rightGaze ? "lg" : "ng"}-left-6palsy.svg"
                                            : 'images/${leftGaze ? "right" : rightGaze ? "left" : upGaze ? "up" : downGaze ? "down" : "normal"}-gaze.svg',
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "$directionText gaze${rightOccNerveTapped == true && leftOccNerveTapped == false ? " with Right CN III Palsy" : rightOccNerveTapped == false && leftOccNerveTapped == true ? " with Left CN III Palsy" : rightOccNerveTapped == true && leftOccNerveTapped == true ? " with CN III Palsy on Both Eyes" : rightAbducensNerveTapped == true && leftAbducensTapped == false ? " with Right CN VI Palsy" : rightAbducensNerveTapped == false && leftAbducensTapped == true ? " with Left CN VI Palsy" : rightAbducensNerveTapped == true && leftAbducensTapped == true ? " with CN VI Palsy on Both Eyes" : ""}",
                      style: const TextStyle(color: Color(0xff000000), fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String calculateDirection(Offset position) {
    const centerX = 200.0; // Half the width of the container
    const centerY = 100.0; // Half the height of the container
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
