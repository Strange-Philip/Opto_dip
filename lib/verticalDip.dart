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
  bool rightOccNerveDoubleTapped = false;
  bool leftOccNerveDoubleTapped = false;
  bool rightTrochlearNerveTapped = false;
  bool leftTrochlearNerveTapped = false;
  bool rightTrochlearNerveDoubleTapped = false;
  bool leftTrochlearNerveDoubleTapped = false;
  bool rightPCGDoubleTapped = false;
  bool leftPCGDoubleTapped = false;
  bool leftGaze = false;
  bool rightGaze = false;
  bool upGaze = false;
  bool downGaze = false;
  bool tectumTapped = false;
  bool tectumDoubleTapped = false;
  bool rightRimlfTapped = false;
  bool leftRimlfTapped = false;
  bool normalGaze = true;
  String directionText = 'Center';
  void setToFalse({
    required String parameter,
    List<String>? exception,
  }) {
    setState(() {
      rightTrochlearNerveTapped = parameter.toString() == "rightTrochlearNerveTapped"
          ? !rightTrochlearNerveTapped
          : exception == null
              ? false
              : exception.contains("rightTrochlearNerveTapped")
                  ? rightTrochlearNerveTapped
                  : false;
      leftTrochlearNerveTapped = parameter.toString() == "leftTrochlearNerveTapped"
          ? !leftTrochlearNerveTapped
          : exception == null
              ? false
              : exception.contains("leftTrochlearNerveTapped")
                  ? leftTrochlearNerveTapped
                  : false;
      tectumTapped = parameter.toString() == "tectumTapped"
          ? !tectumTapped
          : exception == null
              ? false
              : exception.contains("tectumTapped")
                  ? tectumTapped
                  : false;
      tectumDoubleTapped = parameter.toString() == "tectumDoubleTapped"
          ? !tectumDoubleTapped
          : exception == null
              ? false
              : exception.contains("tectumDoubleTapped")
                  ? tectumDoubleTapped
                  : false;

      leftOccNerveTapped = parameter.toString() == "leftOccNerveTapped"
          ? !leftOccNerveTapped
          : exception == null
              ? false
              : exception.contains("leftOccNerveTapped")
                  ? leftOccNerveTapped
                  : false;
      rightOccNerveTapped = parameter.toString() == "rightOccNerveTapped"
          ? !rightOccNerveTapped
          : exception == null
              ? false
              : exception.contains("rightOccNerveTapped")
                  ? rightOccNerveTapped
                  : false;
      leftRimlfTapped = parameter.toString() == "leftRimlfTapped"
          ? !leftRimlfTapped
          : exception == null
              ? false
              : exception.contains("leftRimlfTapped")
                  ? leftRimlfTapped
                  : false;
      rightRimlfTapped = parameter.toString() == "rightRimlfTapped"
          ? !rightRimlfTapped
          : exception == null
              ? false
              : exception.contains("rightRimlfTapped")
                  ? rightRimlfTapped
                  : false;
      leftPCGDoubleTapped = parameter.toString() == "leftPCGDoubleTapped"
          ? !leftPCGDoubleTapped
          : exception == null
              ? false
              : exception.contains("leftPCGDoubleTapped")
                  ? leftPCGDoubleTapped
                  : false;
      rightPCGDoubleTapped = parameter.toString() == "rightPCGDoubleTapped"
          ? !rightPCGDoubleTapped
          : exception == null
              ? false
              : exception.contains("rightPCGDoubleTapped")
                  ? rightPCGDoubleTapped
                  : false;
      leftTrochlearNerveDoubleTapped = parameter.toString() == "leftTrochlearNerveDoubleTapped"
          ? !leftTrochlearNerveDoubleTapped
          : exception == null
              ? false
              : exception.contains("leftTrochlearNerveDoubleTapped")
                  ? leftTrochlearNerveDoubleTapped
                  : false;
      rightTrochlearNerveDoubleTapped = parameter.toString() == "rightTrochlearNerveDoubleTapped"
          ? !rightTrochlearNerveDoubleTapped
          : exception == null
              ? false
              : exception.contains("rightTrochlearNerveDoubleTapped")
                  ? rightTrochlearNerveDoubleTapped
                  : false;
      rightOccNerveDoubleTapped = parameter.toString() == "rightOccNerveDoubleTapped"
          ? !rightOccNerveDoubleTapped
          : exception == null
              ? false
              : exception.contains("rightOccNerveDoubleTapped")
                  ? rightOccNerveDoubleTapped
                  : false;
      leftOccNerveDoubleTapped = parameter.toString() == "leftOccNerveDoubleTapped"
          ? !leftOccNerveDoubleTapped
          : exception == null
              ? false
              : exception.contains("leftOccNerveDoubleTapped")
                  ? leftOccNerveDoubleTapped
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
            rightTrochlearNerveTapped ||
            rightOccNerveDoubleTapped ||
            rightTrochlearNerveDoubleTapped ||
            rightRimlfTapped ||
            rightPCGDoubleTapped
        ? "-right-"
        : leftOccNerveTapped ||
                leftTrochlearNerveTapped ||
                leftOccNerveDoubleTapped ||
                leftTrochlearNerveDoubleTapped ||
                leftRimlfTapped ||
                leftPCGDoubleTapped
            ? "-left-"
            : tectumTapped
                ? "-"
                : getDisorder() == "Normal"
                    ? "-gaze.svg"
                    : "-gaze.svg";

    String disorder = rightOccNerveTapped || leftOccNerveTapped
        ? "3palsy.svg"
        : leftTrochlearNerveTapped || rightTrochlearNerveTapped
            ? "Tpalsy.svg"
            : tectumTapped
                ? "psp.svg"
                : (tectumDoubleTapped &&
                            rightOccNerveDoubleTapped &&
                            rightTrochlearNerveDoubleTapped) ||
                        (tectumDoubleTapped &&
                            leftOccNerveDoubleTapped &&
                            leftTrochlearNerveDoubleTapped)
                    ? "sk-dive.svg"
                    : (rightTrochlearNerveDoubleTapped && rightPCGDoubleTapped) ||
                            (leftTrochlearNerveDoubleTapped && leftPCGDoubleTapped)
                        ? "w-syn.svg"
                        : rightRimlfTapped || leftRimlfTapped
                            ? "dsyn.svg"
                            : getDisorder() == "Normal"
                                ? ""
                                : "";
    print("images/$gaze$affectedEye${disorder.isEmpty ? "" : disorder}");

    return "images/$gaze$affectedEye${disorder.isEmpty ? "" : disorder}";
  }

  String getDamage() {
    return leftOccNerveTapped == true && rightOccNerveTapped == true
        ? "Both Oculomotor Nerves Damage"
        : rightOccNerveTapped == true
            ? "Right Oculomotor Nerve Damage"
            : leftOccNerveTapped == true
                ? "Left Oculomotor Nerve Damage"
                : leftTrochlearNerveTapped == true && rightTrochlearNerveTapped == true
                    ? "Both Trochlear Nerves Damage"
                    : rightTrochlearNerveTapped == true
                        ? "Right Trochlear Nerve Damage"
                        : leftTrochlearNerveTapped == true
                            ? "Left Trochlear Nerve Damage"
                            : tectumTapped == true
                                ? "Tectum Damage"
                                : rightRimlfTapped == true
                                    ? "Right Rostral interstitial medial longitudinal fasciculus Damage"
                                    : leftRimlfTapped == true
                                        ? "Left Rostral interstitial medial longitudinal fasciculus Damage"
                                        : tectumDoubleTapped &&
                                                rightOccNerveDoubleTapped &&
                                                rightTrochlearNerveDoubleTapped
                                            ? "Right Pre nuclear vestibular input Damage"
                                            : tectumDoubleTapped &&
                                                    leftOccNerveDoubleTapped &&
                                                    leftTrochlearNerveDoubleTapped
                                                ? "Left Pre nuclear vestibular input Damage"
                                                : rightTrochlearNerveDoubleTapped &&
                                                        rightPCGDoubleTapped
                                                    ? "Right lateral medulla Damage"
                                                    : leftTrochlearNerveDoubleTapped &&
                                                            leftPCGDoubleTapped
                                                        ? "Left lateral medulla Damage"
                                                        : "No Damage";
  }

  String getDisorder() {
    return rightOccNerveTapped == true && leftOccNerveTapped == false
        ? "Name: Right CN III Palsy"
        : rightOccNerveTapped == false && leftOccNerveTapped == true
            ? "Name: Left CN III Palsy"
            : rightOccNerveTapped == true && leftOccNerveTapped == true
                ? "Name: CN III Palsy on Both Eyes"
                : rightTrochlearNerveTapped == true && leftTrochlearNerveTapped == false
                    ? "Name: Right Trochlear Nerve Palsy"
                    : rightTrochlearNerveTapped == false && leftTrochlearNerveTapped == true
                        ? "Name: Left Trochlear Nerve Palsy"
                        : rightTrochlearNerveTapped == true && leftTrochlearNerveTapped == true
                            ? "Name: Trochlear Nerve Palsy on Both Eyes"
                            : tectumTapped == true
                                ? "Name: Progressive Supranuclear Palsy"
                                : leftRimlfTapped
                                    ? "Name: Left Dorsal Midbrain Syndrome"
                                    : rightRimlfTapped
                                        ? "Name: Right Dorsal Midbrain Syndrome"
                                        : tectumDoubleTapped &&
                                                rightOccNerveDoubleTapped &&
                                                rightTrochlearNerveDoubleTapped
                                            ? "Name: Right Skew deviation"
                                            : tectumDoubleTapped &&
                                                    leftOccNerveDoubleTapped &&
                                                    leftTrochlearNerveDoubleTapped
                                                ? "Name:Left Skew deviation"
                                                : rightTrochlearNerveDoubleTapped &&
                                                        rightPCGDoubleTapped
                                                    ? "Name: Right Wallenberg syndrome"
                                                    : leftTrochlearNerveDoubleTapped &&
                                                            leftPCGDoubleTapped
                                                        ? "Name: Left Wallenberg syndrome"
                                                        : "Normal";
  }

  String getSigns() {
    return rightOccNerveTapped == true || leftOccNerveTapped == true
        ? "Signs: Defective vertical gaze worse with downgaze "
        : rightTrochlearNerveTapped == true || leftTrochlearNerveTapped == true
            ? "Signs: Defective superior oblique, head tilt, hypertropia"
            : tectumTapped == true
                ? "Signs: Defective vertical gaze worse with downgaze, poor lid function, convergence insufficiency"
                : rightRimlfTapped || leftRimlfTapped
                    ? "Signs: Upgaze palsy, convergence insufficiency, papilledema"
                    : (tectumDoubleTapped &&
                                rightOccNerveDoubleTapped &&
                                rightTrochlearNerveDoubleTapped) ||
                            (tectumDoubleTapped &&
                                leftOccNerveDoubleTapped &&
                                leftTrochlearNerveDoubleTapped)
                        ? "Signs: Vertical gaze deficit, Nystagmus, Visual field defects"
                        : (rightTrochlearNerveDoubleTapped && rightPCGDoubleTapped) ||
                                (leftTrochlearNerveDoubleTapped && leftPCGDoubleTapped)
                            ? "Signs: Vertical gaze deficit, Nystagmus, Visual field defects"
                            : "";
  }

  String getSymptons() {
    return rightOccNerveTapped == true || leftOccNerveTapped == true
        ? "Symptoms: Vertical diplopia, pain, vision loss due to ptosis  "
        : rightTrochlearNerveTapped == true || leftTrochlearNerveTapped == true
            ? "Symptoms: Vertical diplopia, pain "
            : tectumTapped == true
                ? "Symptoms: Vertical diplopia, imbalance, slow movements "
                : rightRimlfTapped || leftRimlfTapped
                    ? "Symptoms: Vertical diplopia, blurry vision,nausea"
                    : (tectumDoubleTapped &&
                                rightOccNerveDoubleTapped &&
                                rightTrochlearNerveDoubleTapped) ||
                            (tectumDoubleTapped &&
                                leftOccNerveDoubleTapped &&
                                leftTrochlearNerveDoubleTapped)
                        ? "Symptoms: Vertical diplopia, blurry vision, imbalance, nausea, facial weakness "
                        : (rightTrochlearNerveDoubleTapped && rightPCGDoubleTapped) ||
                                (leftTrochlearNerveDoubleTapped && leftPCGDoubleTapped)
                            ? "Symptoms: Vertical diplopia, blurry vision, imbalance, nausea, facial weakness "
                            : "";
  }

  String getCauses() {
    return rightOccNerveTapped == true || leftOccNerveTapped == true
        ? "Cause of lesion: Trauma,ataxia, aneurysm "
        : rightTrochlearNerveTapped == true || leftTrochlearNerveTapped == true
            ? "Cause of lesion: Trauma, vascular anomalies in diabetes, increased intracranial pressure "
            : tectumTapped == true
                ? "Cause of lesion: Gradual deterioration and death of specific volumes of brain esp . tectum "
                : rightRimlfTapped || leftRimlfTapped
                    ? "Causes of lesion: Damage to dorsal midbrain, injury to rostral interstitial nucleus of the medial longitudinal fasciculus"
                    : (tectumDoubleTapped &&
                                rightOccNerveDoubleTapped &&
                                rightTrochlearNerveDoubleTapped) ||
                            (tectumDoubleTapped &&
                                leftOccNerveDoubleTapped &&
                                leftTrochlearNerveDoubleTapped)
                        ? "Causes of lesion: Damage to the brainstem, cerebellar region, stroke, abscess and inflammation"
                        : (rightTrochlearNerveDoubleTapped && rightPCGDoubleTapped) ||
                                (leftTrochlearNerveDoubleTapped && leftPCGDoubleTapped)
                            ? "Causes of lesion: Damage to the brainstem, cerebellar region, stroke, abscess and inflammation"
                            : "";
  }

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
                  getDamage(),
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
                            setToFalse(parameter: "rightOccNerveTapped");
                            debugPrint('Right occulomotor nerve tapped');
                          },
                          onDoubleTap: () {
                            setToFalse(parameter: "rightOccNerveDoubleTapped", exception: [
                              "tectumDoubleTapped",
                              "rightTrochlearNerveDoubleTapped"
                            ]);
                            debugPrint('Right occulomotor nerve double tapped');
                          },
                          child: Container(
                            width: 10,
                            height: 200,
                            decoration: BoxDecoration(
                              color: rightOccNerveDoubleTapped
                                  ? Colors.red[800]
                                  : rightOccNerveTapped
                                      ? Colors.red
                                      : Colors.transparent,
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
                            setToFalse(parameter: "rightOccNerveTapped");
                            debugPrint('Right occulomotor nerve tapped');
                          },
                          onDoubleTap: () {
                            setToFalse(parameter: "rightOccNerveDoubleTapped", exception: [
                              "tectumDoubleTapped",
                              "rightTrochlearNerveDoubleTapped"
                            ]);
                            debugPrint('Right occulomotor nerve double tapped');
                          },
                          child: Container(
                            width: 88,
                            height: 10,
                            decoration: BoxDecoration(
                                color: rightOccNerveDoubleTapped
                                    ? Colors.red[800]
                                    : rightOccNerveTapped
                                        ? Colors.red
                                        : Colors.transparent,
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
                            setToFalse(parameter: "leftOccNerveTapped");
                            debugPrint('Left occulomotor nerve tapped');
                          },
                          onDoubleTap: () {
                            setToFalse(parameter: "leftOccNerveDoubleTapped", exception: [
                              "tectumDoubleTapped",
                              "leftTrochlearNerveDoubleTapped"
                            ]);
                            debugPrint('Left occulomotor nerve double tapped');
                          },
                          child: Container(
                            width: 88,
                            height: 10,
                            decoration: BoxDecoration(
                                color: leftOccNerveDoubleTapped
                                    ? Colors.red[800]
                                    : leftOccNerveTapped
                                        ? Colors.red
                                        : Colors.transparent,
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
                            setToFalse(parameter: "leftOccNerveTapped");
                            debugPrint('Left occulomotor nerve tapped');
                          },
                          onDoubleTap: () {
                            setToFalse(parameter: "leftOccNerveDoubleTapped", exception: [
                              "tectumDoubleTapped",
                              "leftTrochlearNerveDoubleTapped"
                            ]);
                            debugPrint('Left occulomotor nerve double tapped');
                          },
                          child: Container(
                            width: 10,
                            height: 200,
                            decoration: BoxDecoration(
                                color: leftOccNerveDoubleTapped
                                    ? Colors.red[800]
                                    : leftOccNerveTapped
                                        ? Colors.red
                                        : Colors.transparent,
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
                            setToFalse(parameter: "rightOccNerveTapped");
                            debugPrint('Right occulomotor nerve tapped');
                          },
                          onDoubleTap: () {
                            setToFalse(parameter: "rightOccNerveDoubleTapped", exception: [
                              "tectumDoubleTapped",
                              "rightTrochlearNerveDoubleTapped"
                            ]);
                            debugPrint('Right occulomotor nerve double tapped');
                          },
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                color: rightOccNerveDoubleTapped
                                    ? Colors.red[800]
                                    : rightOccNerveTapped
                                        ? Colors.red
                                        : Colors.transparent,
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
                            setToFalse(parameter: "leftOccNerveTapped");
                            debugPrint('Left occulomotor nerve tapped');
                          },
                          onDoubleTap: () {
                            setToFalse(parameter: "leftOccNerveDoubleTapped", exception: [
                              "tectumDoubleTapped",
                              "leftTrochlearNerveDoubleTapped"
                            ]);
                            debugPrint('Left occulomotor nerve double tapped');
                          },
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                color: leftOccNerveDoubleTapped
                                    ? Colors.red[800]
                                    : leftOccNerveTapped
                                        ? Colors.red
                                        : Colors.transparent,
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
                            setToFalse(parameter: "leftTrochlearNerveTapped");
                            debugPrint('Left Trochlear nerve tapped');
                          },
                          onDoubleTap: () {
                            setToFalse(exception: [
                              "leftPCGDoubleTapped",
                              "tectumDoubleTapped",
                              "leftOccNerveDoubleTapped"
                            ], parameter: "leftTrochlearNerveDoubleTapped");
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: leftTrochlearNerveDoubleTapped
                                    ? Colors.red[800]
                                    : leftTrochlearNerveTapped
                                        ? Colors.red
                                        : Colors.black45,
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
                            setToFalse(parameter: "leftTrochlearNerveTapped");

                            debugPrint('Left Trochlear nerve tapped');
                          },
                          onDoubleTap: () {
                            setToFalse(exception: [
                              "leftPCGDoubleTapped",
                              "tectumDoubleTapped",
                              "leftOccNerveDoubleTapped"
                            ], parameter: "leftTrochlearNerveDoubleTapped");
                          },
                          child: Container(
                            width: 135,
                            height: 8,
                            decoration: BoxDecoration(
                                color: leftTrochlearNerveDoubleTapped
                                    ? Colors.red[800]
                                    : leftTrochlearNerveTapped
                                        ? Colors.red
                                        : Colors.black54,
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
                            setToFalse(parameter: "leftTrochlearNerveTapped");
                            debugPrint('Left Trochlear nerve tapped');
                          },
                          onDoubleTap: () {
                            setToFalse(exception: [
                              "leftPCGDoubleTapped",
                              "tectumDoubleTapped",
                              "leftOccNerveDoubleTapped"
                            ], parameter: "leftTrochlearNerveDoubleTapped");
                          },
                          child: Container(
                            width: 8,
                            height: 332,
                            decoration: BoxDecoration(
                                color: leftTrochlearNerveDoubleTapped
                                    ? Colors.red[800]
                                    : leftTrochlearNerveTapped
                                        ? Colors.red
                                        : Colors.black54,
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
                            setToFalse(parameter: "rightTrochlearNerveTapped");
                            debugPrint('Right Trochlear nerve tapped');
                          },
                          onDoubleTap: () {
                            setToFalse(exception: [
                              "rightPCGDoubleTapped",
                              "tectumDoubleTapped",
                              "rightOccNerveDoubleTapped"
                            ], parameter: "rightTrochlearNerveDoubleTapped");
                          },
                          child: Container(
                            width: 8,
                            height: 335,
                            decoration: BoxDecoration(
                                color: rightTrochlearNerveDoubleTapped
                                    ? Colors.red[800]
                                    : rightTrochlearNerveTapped
                                        ? Colors.red
                                        : Colors.black54,
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
                            setToFalse(parameter: "rightTrochlearNerveTapped");
                            debugPrint('Right Trochlear nerve tapped');
                          },
                          onDoubleTap: () {
                            setToFalse(exception: [
                              "rightPCGDoubleTapped",
                              "tectumDoubleTapped",
                              "rightOccNerveDoubleTapped"
                            ], parameter: "rightTrochlearNerveDoubleTapped");
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: rightTrochlearNerveDoubleTapped
                                    ? Colors.red[800]
                                    : rightTrochlearNerveTapped
                                        ? Colors.red
                                        : Colors.black45,
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
                            setToFalse(parameter: "rightTrochlearNerveTapped");
                            debugPrint('Right Trochlear nerve tapped');
                          },
                          onDoubleTap: () {
                            setToFalse(exception: [
                              "rightPCGDoubleTapped",
                              "tectumDoubleTapped",
                              "rightOccNerveDoubleTapped"
                            ], parameter: "rightTrochlearNerveDoubleTapped");
                          },
                          child: Container(
                            width: 120,
                            height: 8,
                            decoration: BoxDecoration(
                                color: rightTrochlearNerveDoubleTapped
                                    ? Colors.red[800]
                                    : rightTrochlearNerveTapped
                                        ? Colors.red
                                        : Colors.black54,
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
                            setToFalse(parameter: "tectumTapped");
                            debugPrint('Tectum tapped');
                          },
                          onDoubleTap: () {
                            setToFalse(parameter: "tectumDoubleTapped", exception: [
                              "rightOccNerveDoubleTapped",
                              "rightTrochlearNerveDoubleTapped",
                              "leftTrochlearNerveDoubleTapped",
                              "leftOccNerveDoubleTapped"
                            ]);
                            debugPrint('Tectum double tapped');
                          },
                          child: Container(
                            width: 80,
                            height: 24,
                            decoration: BoxDecoration(
                                color: tectumDoubleTapped
                                    ? Colors.red[800]
                                    : tectumTapped
                                        ? Colors.red
                                        : Colors.lightBlue.withOpacity(0.8),
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
                    Positioned(
                      top: 470,
                      left: 350,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setToFalse(parameter: "leftRimlfTapped");
                            debugPrint('leftRimlf tapped');
                          },
                          child: Container(
                            width: 80,
                            height: 24,
                            decoration: BoxDecoration(
                                color: leftRimlfTapped ? Colors.red : Colors.grey.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(
                                child: Text(
                              "riMLF",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 465,
                      left: 278,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onDoubleTap: () {
                            setToFalse(
                                parameter: "leftPCGDoubleTapped",
                                exception: ["leftTrochlearNerveDoubleTapped"]);
                            debugPrint('leftPCG tapped');
                          },
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                color: leftPCGDoubleTapped ? Colors.red[800] : Colors.transparent,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 465,
                      left: 154,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onDoubleTap: () {
                            setToFalse(
                                parameter: "rightPCGDoubleTapped",
                                exception: ["rightTrochlearNerveDoubleTapped"]);
                            debugPrint('rightPCG tapped');
                          },
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                color: rightPCGDoubleTapped ? Colors.red[800] : Colors.transparent,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 470,
                      left: 30,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setToFalse(parameter: "rightRimlfTapped");
                            debugPrint('rightRimlf tapped');
                          },
                          child: Container(
                            width: 80,
                            height: 24,
                            decoration: BoxDecoration(
                                color: rightRimlfTapped ? Colors.red : Colors.grey.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(
                                child: Text(
                              "riMLF",
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
                    getDisorder(),
                    style: const TextStyle(color: Color(0xff000000), fontSize: 20),
                  ),
                  Text(
                    getSigns(),
                    style: const TextStyle(color: Color(0xff000000), fontSize: 20),
                  ),
                  Text(
                    getSymptons(),
                    style: const TextStyle(color: Color(0xff000000), fontSize: 20),
                  ),
                  Text(
                    getCauses(),
                    style: const TextStyle(color: Color(0xff000000), fontSize: 20),
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
