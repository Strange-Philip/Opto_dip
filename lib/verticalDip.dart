import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VerticalDip extends StatefulWidget {
  const VerticalDip({super.key});

  @override
  State<VerticalDip> createState() => _VerticalDipState();
}

class _VerticalDipState extends State<VerticalDip> {
  bool rightOccNerveTapped = false;
  bool leftOccNerveTapped = false;
  bool rightTrochlearNerveTapped = false;
  bool leftTrochlearNerveTapped = false;
  bool leftGaze = false;
  bool rightGaze = false;
  bool upGaze = false;
  bool downGaze = false;
  bool tectumTapped = false;
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
                              : leftTrochlearNerveTapped == true &&
                                      rightTrochlearNerveTapped == true
                                  ? "Both Trochlear Nerves Damage"
                                  : rightTrochlearNerveTapped == true
                                      ? "Right Trochlear Nerve Damage"
                                      : leftTrochlearNerveTapped == true
                                          ? "Left Trochlear Nerve Damage"
                                          : tectumTapped == true
                                              ? "Tectum Damage"
                                              : "No Damage",
                  style: const TextStyle(color: Colors.red, fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Image.asset(
                      'images/image-7.png',
                      width: 500,
                      height: 500,
                    ),
                    Positioned(
                      top: 175,
                      left: 105,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              rightOccNerveTapped = !rightOccNerveTapped;
                              leftTrochlearNerveTapped = false;
                              rightTrochlearNerveTapped = false;
                              tectumTapped = false;
                            });
                            debugPrint('Right occulomotor nerve tapped');
                          },
                          child: Container(
                            width: 10,
                            height: 200,
                            decoration: BoxDecoration(
                              color: rightOccNerveTapped ? Colors.red : Colors.transparent,
                              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(6)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 370,
                      left: 105,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              rightOccNerveTapped = !rightOccNerveTapped;
                              leftTrochlearNerveTapped = false;
                              rightTrochlearNerveTapped = false;
                              tectumTapped = false;
                            });
                            debugPrint('Right occulomotor nerve tapped');
                          },
                          child: Container(
                            width: 88,
                            height: 10,
                            decoration: BoxDecoration(
                                color: rightOccNerveTapped ? Colors.red : Colors.transparent,
                                borderRadius:
                                    const BorderRadius.only(bottomLeft: Radius.circular(10))),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 370,
                      left: 272,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              leftOccNerveTapped = !leftOccNerveTapped;
                              leftTrochlearNerveTapped = false;
                              rightTrochlearNerveTapped = false;
                              tectumTapped = false;
                            });
                            debugPrint('Left occulomotor nerve tapped');
                          },
                          child: Container(
                            width: 88,
                            height: 10,
                            decoration: BoxDecoration(
                                color: leftOccNerveTapped ? Colors.red : Colors.transparent,
                                borderRadius:
                                    const BorderRadius.only(bottomRight: Radius.circular(10))),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 175,
                      left: 350,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              leftOccNerveTapped = !leftOccNerveTapped;
                              leftTrochlearNerveTapped = false;
                              rightTrochlearNerveTapped = false;
                              tectumTapped = false;
                            });
                            debugPrint('Left occulomotor nerve tapped');
                          },
                          child: Container(
                            width: 10,
                            height: 200,
                            decoration: BoxDecoration(
                                color: leftOccNerveTapped ? Colors.red : Colors.transparent,
                                borderRadius:
                                    const BorderRadius.only(bottomRight: Radius.circular(6))),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 355,
                      left: 190,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              rightOccNerveTapped = !rightOccNerveTapped;
                              leftTrochlearNerveTapped = false;
                              rightTrochlearNerveTapped = false;
                              tectumTapped = false;
                            });
                            debugPrint('Right occulomotor nerve tapped');
                          },
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                color: rightOccNerveTapped ? Colors.red : Colors.transparent,
                                borderRadius: BorderRadius.circular(18)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 355,
                      left: 240,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              leftOccNerveTapped = !leftOccNerveTapped;
                              leftTrochlearNerveTapped = false;
                              rightTrochlearNerveTapped = false;
                              tectumTapped = false;
                            });
                            debugPrint('Left occulomotor nerve tapped');
                          },
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                color: leftOccNerveTapped ? Colors.red : Colors.transparent,
                                borderRadius: BorderRadius.circular(18)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 410,
                      left: 237,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              leftTrochlearNerveTapped = !leftTrochlearNerveTapped;
                              leftOccNerveTapped = false;
                              rightOccNerveTapped = false;
                              tectumTapped = false;
                            });
                            debugPrint('Left Trochlear nerve tapped');
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: leftTrochlearNerveTapped ? Colors.red : Colors.black45,
                                borderRadius: BorderRadius.circular(15)),
                            child: const Center(
                                child: Text(
                              "IV",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 420,
                      left: 265,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              leftTrochlearNerveTapped = !leftTrochlearNerveTapped;
                              leftOccNerveTapped = false;
                              rightOccNerveTapped = false;
                              tectumTapped = false;
                            });
                            debugPrint('Left Abducens nerve tapped');
                          },
                          child: Container(
                            width: 135,
                            height: 8,
                            decoration: BoxDecoration(
                                color: leftTrochlearNerveTapped ? Colors.red : Colors.black54,
                                borderRadius:
                                    const BorderRadius.only(bottomRight: Radius.circular(6))),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 95,
                      left: 395,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              leftTrochlearNerveTapped = !leftTrochlearNerveTapped;
                              leftOccNerveTapped = false;
                              rightOccNerveTapped = false;
                              tectumTapped = false;
                            });
                            debugPrint('Left Abducens nerve tapped');
                          },
                          child: Container(
                            width: 8,
                            height: 332,
                            decoration: BoxDecoration(
                                color: leftTrochlearNerveTapped ? Colors.red : Colors.black54,
                                borderRadius:
                                    const BorderRadius.only(bottomRight: Radius.circular(6))),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 95,
                      left: 80,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              rightTrochlearNerveTapped = !rightTrochlearNerveTapped;
                              leftOccNerveTapped = false;
                              rightOccNerveTapped = false;
                              tectumTapped = false;
                            });
                            debugPrint('Right Abducens nerve tapped');
                          },
                          child: Container(
                            width: 8,
                            height: 335,
                            decoration: BoxDecoration(
                                color: rightTrochlearNerveTapped ? Colors.red : Colors.black54,
                                borderRadius:
                                    const BorderRadius.only(bottomLeft: Radius.circular(6))),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 410,
                      left: 198,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              rightTrochlearNerveTapped = !rightTrochlearNerveTapped;
                              leftOccNerveTapped = false;
                              rightOccNerveTapped = false;
                              tectumTapped = false;
                            });
                            debugPrint('Right Abducens nerve tapped');
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: rightTrochlearNerveTapped ? Colors.red : Colors.black45,
                                borderRadius: BorderRadius.circular(15)),
                            child: const Center(
                                child: Text(
                              "IV",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 422,
                      left: 80,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              rightTrochlearNerveTapped = !rightTrochlearNerveTapped;
                              leftOccNerveTapped = false;
                              rightOccNerveTapped = false;
                              tectumTapped = false;
                            });
                            debugPrint('Right Abducens nerve tapped');
                          },
                          child: Container(
                            width: 120,
                            height: 8,
                            decoration: BoxDecoration(
                                color: rightTrochlearNerveTapped ? Colors.red : Colors.black54,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 325,
                      left: 192,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              tectumTapped = !tectumTapped;
                              leftOccNerveTapped = false;
                              rightOccNerveTapped = false;
                              leftTrochlearNerveTapped = false;
                              rightTrochlearNerveTapped = false;
                            });
                            debugPrint('Tectum tapped');
                          },
                          child: Container(
                            width: 80,
                            height: 24,
                            decoration: BoxDecoration(
                                color:
                                    tectumTapped ? Colors.red : Colors.lightBlue.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(
                                child: Text(
                              "Tectum",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
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
                                : rightTrochlearNerveTapped == true &&
                                        leftTrochlearNerveTapped == false
                                    ? "Name: Right Trochlear Nerve Palsy"
                                    : rightTrochlearNerveTapped == false &&
                                            leftTrochlearNerveTapped == true
                                        ? "Name: Left Trochlear Nerve Palsy"
                                        : rightTrochlearNerveTapped == true &&
                                                leftTrochlearNerveTapped == true
                                            ? "Name: Trochlear Nerve Palsy on Both Eyes"
                                            : tectumTapped == true
                                                ? "Name: Progressive Supranuclear Palsy"
                                                : "Normal",
                    style: const TextStyle(color: Color(0xff000000), fontSize: 20),
                  ),
                  Text(
                    rightOccNerveTapped == true || leftOccNerveTapped == true
                        ? "Signs: Defective vertical gaze worse with downgaze "
                        : rightTrochlearNerveTapped == true || leftTrochlearNerveTapped == true
                            ? "Signs: Defective superior oblique, head tilt, hypertropia"
                            : tectumTapped == true
                                ? "Signs: Defective vertical gaze worse with downgaze, poor lid function, convergence insufficiency"
                                : "",
                    style: const TextStyle(color: Color(0xff000000), fontSize: 20),
                  ),
                  Text(
                    rightOccNerveTapped == true || leftOccNerveTapped == true
                        ? "Symptoms: Vertical diplopia  "
                        : rightTrochlearNerveTapped == true || leftTrochlearNerveTapped == true
                            ? "Symptoms: Vertical diplopia, pain \nCause of lesion: Trauma, vascular anomalies in diabetes, increased intracranial pressure "
                            : tectumTapped == true
                                ? "Symptoms: Vertical diplopia, imbalance, slow movements \nCause of lesion: Gradual deterioration and death of specific volumes of brain esp . tectum"
                                : "",
                    style: const TextStyle(color: Color(0xff000000), fontSize: 20),
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
                                ? "images/${leftGaze ? "rg" : rightGaze ? "lg" : upGaze ? "ug" : downGaze ? "dg" : "ng"}-right-3palsy.svg"
                                : rightOccNerveTapped == false && leftOccNerveTapped == true
                                    ? "images/${leftGaze ? "rg" : rightGaze ? "lg" : upGaze ? "ug" : downGaze ? "dg" : "ng"}-left-3palsy.svg"
                                    : rightTrochlearNerveTapped == true &&
                                            leftTrochlearNerveTapped == false
                                        ? "images/${leftGaze ? "lg" : rightGaze ? "rg" : upGaze ? "ug" : downGaze ? "dg" : "ng"}-right-Tpalsy.svg"
                                        : rightTrochlearNerveTapped == false &&
                                                leftTrochlearNerveTapped == true
                                            ? "images/${leftGaze ? "lg" : rightGaze ? "rg" : upGaze ? "ug" : downGaze ? "dg" : "ng"}-left-Tpalsy.svg"
                                            : tectumTapped == true
                                                ? "images/${leftGaze ? "rg" : rightGaze ? "lg" : upGaze ? "ug" : downGaze ? "dg" : "ng"}-psp.svg"
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
                      "$directionText gaze${rightOccNerveTapped == true && leftOccNerveTapped == false ? " with Right CN III Palsy" : rightOccNerveTapped == false && leftOccNerveTapped == true ? " with Left CN III Palsy" : rightOccNerveTapped == true && leftOccNerveTapped == true ? " with CN III Palsy on Both Eyes" : rightTrochlearNerveTapped == true && leftTrochlearNerveTapped == false ? " with Right Trochlear Nerve Palsy" : rightTrochlearNerveTapped == false && leftTrochlearNerveTapped == true ? " with Left Trochlear Nerve Palsy" : rightTrochlearNerveTapped == true && leftTrochlearNerveTapped == true ? " with Trochlear Palsy on Both Eyes" : tectumTapped ? " Progressive Supranuclear Palsy" : ""}",
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
