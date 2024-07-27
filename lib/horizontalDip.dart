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
  bool rightAbducensTapped = false;
  bool rightPCGDoubleTapped = false;
  bool leftAbducensTapped = false;
  bool leftDuane = false;
  bool rightDuane = false;
  bool leftPCGDoubleTapped = false;
  bool doubleTap = false;
  bool rightMLFtapped = false;
  bool rightMLFDoubleTapped = false;
  bool leftMLFTapped = false;
  bool leftMLFDoubleTapped = false;
  bool leftGaze = false;
  bool rightGaze = false;
  bool upGaze = false;
  bool downGaze = false;
  bool normalGaze = true;
  String directionText = 'Center';

  void setToFalse({required String parameter, String? exception}) {
    setState(() {
      rightMLFtapped = exception.toString() == "rightMLFtapped"
          ? rightMLFtapped
          : parameter.toString() == "rightMLFtapped"
              ? !rightMLFtapped
              : false;
      leftMLFTapped = exception.toString() == "leftMLFTapped"
          ? leftMLFTapped
          : parameter.toString() == "leftMLFTapped"
              ? !leftMLFTapped
              : false;
      leftDuane = exception.toString() == "leftDuane"
          ? leftDuane
          : parameter.toString() == "leftDuane"
              ? !leftDuane
              : false;
      rightDuane = exception.toString() == "rightDuane"
          ? rightDuane
          : parameter.toString() == "rightDuane"
              ? !rightDuane
              : false;
      rightMLFDoubleTapped = exception.toString() == "rightMLFDoubleTapped"
          ? rightMLFDoubleTapped
          : parameter.toString() == "rightMLFDoubleTapped"
              ? !rightMLFDoubleTapped
              : false;
      leftMLFDoubleTapped = exception.toString() == "leftMLFDoubleTapped"
          ? leftMLFDoubleTapped
          : parameter.toString() == "leftMLFDoubleTapped"
              ? !leftMLFDoubleTapped
              : false;
      leftOccNerveTapped = exception.toString() == "leftOccNerveTapped"
          ? leftOccNerveTapped
          : parameter.toString() == "leftOccNerveTapped"
              ? !leftOccNerveTapped
              : false;
      rightOccNerveTapped = exception.toString() == "rightOccNerveTapped"
          ? rightOccNerveTapped
          : parameter.toString() == "rightOccNerveTapped"
              ? !rightOccNerveTapped
              : false;
      leftAbducensTapped = exception.toString() == "leftAbducensTapped"
          ? leftAbducensTapped
          : parameter.toString() == "leftAbducensTapped"
              ? !leftAbducensTapped
              : false;
      rightPCGDoubleTapped = exception.toString() == "rightPCGDoubleTapped"
          ? rightPCGDoubleTapped
          : parameter.toString() == "rightPCGDoubleTapped"
              ? !rightPCGDoubleTapped
              : false;
      rightAbducensTapped = exception.toString() == "rightAbducensTapped"
          ? rightAbducensTapped
          : parameter.toString() == "rightAbducensTapped"
              ? !rightAbducensTapped
              : false;
      leftPCGDoubleTapped = exception.toString() == "leftPCGDoubleTapped"
          ? leftPCGDoubleTapped
          : parameter.toString() == "leftPCGDoubleTapped"
              ? !leftPCGDoubleTapped
              : false;
    });
  }

  String getImage() {
    String gaze = leftGaze
        ? "rg"
        : rightGaze
            ? "lg"
            : upGaze
                ? "ug"
                : downGaze
                    ? "dg"
                    : "ng";
    String affectedEye = rightOccNerveTapped ||
            rightAbducensTapped ||
            rightDuane ||
            rightMLFtapped ||
            rightMLFDoubleTapped ||
            rightPCGDoubleTapped
        ? "-right-"
        : leftOccNerveTapped ||
                leftAbducensTapped ||
                leftDuane ||
                leftMLFTapped ||
                leftMLFDoubleTapped ||
                leftPCGDoubleTapped
            ? "-left-"
            : "-gaze.svg";

    String disorder = rightOccNerveTapped || leftOccNerveTapped
        ? "3palsy.svg"
        : leftAbducensTapped || rightAbducensTapped
            ? "6palsy.svg"
            : rightDuane || leftDuane
                ? "duane-syn.svg"
                : (rightMLFDoubleTapped && rightPCGDoubleTapped) ||
                        (leftMLFDoubleTapped && leftPCGDoubleTapped)
                    ? "one-syn.svg"
                    : rightMLFtapped || leftMLFTapped || rightMLFDoubleTapped || leftMLFDoubleTapped
                        ? "inter-opt.svg"
                        : "";

    return downGaze
        ? "images/dg-gaze.svg"
        : upGaze
            ? "images/ug-gaze.svg"
            : "images/$gaze$affectedEye${disorder.isEmpty ? "" : disorder}";
  }

  String getDamage() {
    return leftOccNerveTapped == true && rightOccNerveTapped == true
        ? "Both Oculomotor Nerves Damage"
        : rightOccNerveTapped == true
            ? "Right Oculomotor Nerve Damage"
            : leftOccNerveTapped == true
                ? "Left Oculomotor Nerve Damage"
                : (leftAbducensTapped == true && rightAbducensTapped == true) ||
                        (leftDuane == true && rightDuane == true)
                    ? "Both Abducens nerves Damage"
                    : leftAbducensTapped || leftDuane == true
                        ? "Left Abducens nerve Damage"
                        : rightAbducensTapped || rightDuane == true
                            ? "Right Abducens nerve Damage"
                            : leftMLFTapped == true && rightMLFtapped == true
                                ? "Both Medial longitudinal fasciculus Damage"
                                : leftMLFTapped == true
                                    ? "Left Medial longitudinal fasciculus Damage"
                                    : rightMLFtapped == true
                                        ? "Right Medial longitudinal fasciculus Damage"
                                        : leftMLFDoubleTapped == true &&
                                                leftPCGDoubleTapped == true &&
                                                rightPCGDoubleTapped == true &&
                                                rightMLFDoubleTapped == true
                                            ? "Medial longitudinal fasciculus & Pontine gaze center Damage"
                                            : leftMLFDoubleTapped == true &&
                                                    leftPCGDoubleTapped == true
                                                ? "Left Medial longitudinal fasciculus & Pontine gaze center Damage"
                                                : rightMLFtapped == true &&
                                                        rightPCGDoubleTapped == true
                                                    ? "Right Medial longitudinal fasciculus & Pontine gaze center Damage"
                                                    : rightPCGDoubleTapped == true
                                                        ? "Right Pontine gaze center Damage"
                                                        : leftPCGDoubleTapped == true
                                                            ? "Left Pontine gaze center Damage"
                                                            : rightMLFDoubleTapped == true
                                                                ? "Right Medial longitudinal fasciculus Damage"
                                                                : leftMLFDoubleTapped == true
                                                                    ? "Left Medial longitudinal fasciculus Damage"
                                                                    : "No Damage";
  }

  String getDisorder() {
    return rightOccNerveTapped == true
        ? "Name: Right CN III Palsy"
        : leftOccNerveTapped == true
            ? "Name: Left CN III Palsy"
            : rightAbducensTapped == true
                ? "Name: Right Sixth Nerve Palsy"
                : leftAbducensTapped == true
                    ? "Name: Left Sixth Nerve Palsy"
                    : rightMLFtapped == true
                        ? "Name: Right Internuclear Ophthalmoplegia"
                        : leftMLFTapped == true
                            ? "Name: Left Internuclear Ophthalmoplegia"
                            : rightDuane == true
                                ? "Name: Right Duane’s syndrome"
                                : leftDuane == true
                                    ? "Name: Left Duane’s syndrome"
                                    : rightMLFDoubleTapped == true && rightPCGDoubleTapped
                                        ? "Name: Right One and half syndrome"
                                        : leftMLFDoubleTapped == true && leftPCGDoubleTapped
                                            ? "Name: Left One and half syndrome"
                                            : "No disorder";
  }

  String getSigns() {
    return rightOccNerveTapped == true || leftOccNerveTapped == true
        ? "Signs: Defective superior rectus, inferior rectus, inferior oblique, ptosis, mydriasis"
        : leftAbducensTapped == true || rightAbducensTapped == true
            ? "Signs: Impaired abduction in affected eye, esotropia"
            : rightMLFtapped == true ||
                    leftMLFTapped == true ||
                    rightMLFDoubleTapped == true ||
                    leftMLFDoubleTapped == true
                ? "Signs: Impaired adduction in affected eye "
                : rightDuane == true || leftDuane == true
                    ? "Signs:  Limited abduction in affected eye, retraction of eyeball into eye socket on adduction, poor convergence, head tilt "
                    : (rightMLFDoubleTapped == true || leftMLFDoubleTapped == true) &&
                            (rightPCGDoubleTapped == true || leftPCGDoubleTapped)
                        ? "Signs: Impaired abduction in one eye, other eye constantly moves out  "
                        : "";
  }

  String getSymptons() {
    return rightOccNerveTapped == true || leftOccNerveTapped == true
        ? "Symptoms: Vertical diplopia, pain, vision loss due to ptosis "
        : leftAbducensTapped == true || rightAbducensTapped == true
            ? "Symptoms: Horizontal diplopia worse in distance "
            : rightMLFtapped == true ||
                    leftMLFTapped == true ||
                    rightMLFDoubleTapped == true ||
                    leftMLFDoubleTapped == true
                ? "Symptoms: Horizontal diplopia, nystagmus "
                : leftDuane == true || rightDuane == true
                    ? "Symptoms: Horizontal diplopia  "
                    : (rightMLFDoubleTapped == true || leftMLFDoubleTapped == true) &&
                            (rightPCGDoubleTapped == true || leftPCGDoubleTapped)
                        ? "Symptoms: Horizontal diplopia, nystagmus  "
                        : "";
  }

  String getCauses() {
    return rightOccNerveTapped == true || leftOccNerveTapped == true
        ? "Cause of lesion: Trauma,ataxia, aneurysm, idiopathic "
        : leftAbducensTapped == true || rightAbducensTapped == true
            ? "Cause of lesion: Tumors, trauma, stroke, idiopathic"
            : rightMLFtapped == true ||
                    leftMLFTapped == true ||
                    rightMLFDoubleTapped == true ||
                    leftMLFDoubleTapped == true
                ? "Cause of lesion: Multiple sclerosis, stroke"
                : leftDuane == true || rightDuane == true
                    ? "Cause of lesion: Abducens nerve hypoplasia or absence  "
                    : (rightMLFDoubleTapped == true || leftMLFDoubleTapped == true) &&
                            (rightPCGDoubleTapped == true || leftPCGDoubleTapped)
                        ? "Cause of lesion: Multiple sclerosis, infarction, trauma, pontine hemorrhage "
                        : "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  getDamage(),
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
                            setToFalse(parameter: "rightOccNerveTapped");
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
                            setToFalse(parameter: "rightOccNerveTapped");
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
                            setToFalse(parameter: "leftOccNerveTapped");
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
                            setToFalse(parameter: "leftOccNerveTapped");
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
                            setToFalse(parameter: "rightOccNerveTapped");
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
                            setToFalse(parameter: "leftOccNerveTapped");
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
                            setToFalse(parameter: "leftAbducensTapped");
                            debugPrint('Left Abducens nerve tapped');
                          },
                          onLongPress: () {
                            setToFalse(parameter: "leftDuane");
                            debugPrint('Left Abducens nerve long press');
                          },
                          child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: leftDuane
                                      ? Colors.red[800]
                                      : leftAbducensTapped
                                          ? Colors.red
                                          : Colors.transparent,
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
                            setToFalse(parameter: "leftAbducensTapped");
                            debugPrint('Left Abducens nerve tapped');
                          },
                          onLongPress: () {
                            setToFalse(parameter: "leftDuane");
                            debugPrint('Left Abducens nerve long press');
                          },
                          child: Container(
                              width: 8,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: leftDuane
                                      ? Colors.red[800]
                                      : leftAbducensTapped
                                          ? Colors.red
                                          : Colors.transparent,
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
                            setToFalse(parameter: "leftAbducensTapped");
                            debugPrint('Left Abducens nerve tapped');
                          },
                          onLongPress: () {
                            setToFalse(parameter: "leftDuane");
                            debugPrint('Left Abducens nerve long press');
                          },
                          child: Container(
                            width: 135,
                            height: 8,
                            decoration: BoxDecoration(
                                color: leftDuane
                                    ? Colors.red[800]
                                    : leftAbducensTapped
                                        ? Colors.red
                                        : Colors.transparent,
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
                            setToFalse(parameter: "leftAbducensTapped");
                            debugPrint('Left Abducens nerve tapped');
                          },
                          child: Container(
                            width: 8,
                            height: 397,
                            decoration: BoxDecoration(
                                color: leftDuane
                                    ? Colors.red[800]
                                    : leftAbducensTapped
                                        ? Colors.red
                                        : Colors.transparent,
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
                            setToFalse(parameter: "rightAbducensTapped");
                            debugPrint('Right Abducens nerve tapped');
                          },
                          onLongPress: () {
                            setToFalse(parameter: "rightDuane");
                            debugPrint('Right Abducens nerve long press');
                          },
                          child: Container(
                            width: 8,
                            height: 397,
                            decoration: BoxDecoration(
                                color: rightDuane
                                    ? Colors.red[800]
                                    : rightAbducensTapped
                                        ? Colors.red
                                        : Colors.transparent,
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
                            setToFalse(parameter: "rightAbducensTapped");
                            debugPrint('Right Abducens nerve tapped');
                          },
                          onLongPress: () {
                            setToFalse(parameter: "rightDuane");
                            debugPrint('Right Abducens nerve long press');
                          },
                          child: Container(
                            width: 8,
                            height: 20,
                            decoration: BoxDecoration(
                                color: rightDuane
                                    ? Colors.red[800]
                                    : rightAbducensTapped
                                        ? Colors.red
                                        : Colors.transparent,
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
                            setToFalse(parameter: "rightAbducensTapped");
                            debugPrint('Right Abducens nerve tapped');
                          },
                          onLongPress: () {
                            setToFalse(parameter: "rightDuane");
                            debugPrint('Right Abducens nerve long press');
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: rightDuane
                                    ? Colors.red[800]
                                    : rightAbducensTapped
                                        ? Colors.red
                                        : Colors.transparent,
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
                            setToFalse(parameter: "rightAbducensTapped");
                            debugPrint('Right Abducens nerve tapped');
                          },
                          onLongPress: () {
                            setToFalse(parameter: "rightDuane");
                            debugPrint('Right Abducens nerve long press');
                          },
                          child: Container(
                            width: 145,
                            height: 8,
                            decoration: BoxDecoration(
                                color: rightDuane
                                    ? Colors.red[800]
                                    : rightAbducensTapped
                                        ? Colors.red
                                        : Colors.transparent,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 300,
                      left: 242,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setToFalse(parameter: "rightMLFtapped");
                            debugPrint('Right MLF nerve tapped');
                          },
                          onDoubleTap: () {
                            setToFalse(
                                parameter: "rightMLFDoubleTapped",
                                exception: "rightPCGDoubleTapped");
                            debugPrint('Right MLF nerve double tapped');
                          },
                          child: Container(
                            width: 9,
                            height: 90,
                            decoration: BoxDecoration(
                                color: rightMLFDoubleTapped
                                    ? Colors.red[800]
                                    : rightMLFtapped
                                        ? Colors.red
                                        : Colors.black54,
                                borderRadius: BorderRadius.circular(15)),
                            child: const Center(
                              child: Text(
                                "M\nL\nF",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 300,
                      left: 251,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setToFalse(
                              parameter: "leftMLFTapped",
                            );
                            debugPrint('Left MLF nerve tapped');
                          },
                          onDoubleTap: () {
                            setToFalse(
                                parameter: "leftMLFDoubleTapped", exception: "leftPCGDoubleTapped");
                            debugPrint('Left MLF nerve double tapped');
                          },
                          child: Container(
                            width: 9,
                            height: 90,
                            decoration: BoxDecoration(
                                color: leftMLFDoubleTapped
                                    ? Colors.red[800]
                                    : leftMLFTapped
                                        ? Colors.red
                                        : Colors.black54,
                                borderRadius: BorderRadius.circular(15)),
                            child: const Center(
                              child: Text(
                                "M\nL\nF",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 422,
                      left: 292,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onDoubleTap: () {
                            setToFalse(
                                parameter: "leftPCGDoubleTapped", exception: "leftMLFDoubleTapped");
                            debugPrint('Left PCG nerve double tapped');
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: leftPCGDoubleTapped ? Colors.red[800] : Colors.transparent,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 422,
                      left: 180,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onDoubleTap: () {
                            setToFalse(
                                parameter: "rightPCGDoubleTapped",
                                exception: "rightMLFDoubleTapped");
                            debugPrint('Right PCG nerve double tapped');
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: rightPCGDoubleTapped ? Colors.red[800] : Colors.transparent,
                                borderRadius: BorderRadius.circular(5)),
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
                    style: TextStyle(color: Color(0xff000000), fontSize: 28),
                  ),
                  Text(
                    getDisorder(),
                    style: const TextStyle(color: Color(0xff000000), fontSize: 22),
                  ),
                  Text(
                    getSigns(),
                    style: const TextStyle(color: Color(0xff000000), fontSize: 22),
                  ),
                  Text(
                    getSymptons(),
                    style: const TextStyle(color: Color(0xff000000), fontSize: 22),
                  ),
                  Text(
                    getCauses(),
                    style: const TextStyle(color: Color(0xff000000), fontSize: 22),
                  ),
                  const Center(
                    child: Text(
                      "Right            Left",
                      style: TextStyle(color: Color(0xff000000), fontSize: 20),
                    ),
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
                            getImage(),
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "$directionText gaze with ${getDisorder().replaceFirst("Name: ", "").replaceFirst("No disorder", "No Damage")}",
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
