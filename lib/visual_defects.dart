import 'package:flutter/material.dart';

class VisualDefects extends StatefulWidget {
  const VisualDefects({super.key});

  @override
  State<VisualDefects> createState() => _VisualDefectsState();
}

class _VisualDefectsState extends State<VisualDefects> {
  bool bitemporalHemiAnopia = false;
  bool centralScotoma = false;
  bool contralateralInferior = false;
  bool contralateralSuperior = false;
  bool monocularVisionLoss = false;
  bool contralateralHomonymous = false;

  String getVisualDefect() {
    return bitemporalHemiAnopia == true
        ? "Bitemporal Hemianopia"
        : centralScotoma == true
            ? "Central Scotoma"
            : contralateralInferior == true
                ? "Contralateral Inferior Quadrantanopia"
                : contralateralSuperior == true
                    ? "Contralateral Superior Quadrantanopia"
                    : monocularVisionLoss == true
                        ? "Monocular Vision Loss"
                        : contralateralHomonymous == true
                            ? "Contralateral Homonymous Hemianopia"
                            : "No Damage";
  }

  String getImage() {
    return bitemporalHemiAnopia == true
        ? "images/bitemporal_hem.png"
        : centralScotoma == true
            ? "images/central_scotoma.png"
            : contralateralInferior == true
                ? "images/contr_inferior_quan.png"
                : contralateralSuperior == true
                    ? "images/contr_sup_quan.png"
                    : monocularVisionLoss == true
                        ? "images/monoculat_visoion_loss.png"
                        : contralateralHomonymous == true
                            ? "images/contra_hon_hem.png"
                            : "";
  }

  String getSigns() {
    return bitemporalHemiAnopia == true
        ? "Loss of peripheral vision .Central vision remains normal so Pxt might not notice the defect"
        : centralScotoma == true
            ? "Central vision loss ,Distorted vision ,CV deficiency ,APD"
            : contralateralInferior == true
                ? "Loss of vision in the inferior quadrants. "
                : contralateralSuperior == true
                    ? "Vision loss in upper quadrant"
                    : monocularVisionLoss == true
                        ? "Complete vision loss in one eye\nAbnormal pupil size"
                        : contralateralHomonymous == true
                            ? "Loss of half of the VF And the other half is normal. If Right VF is affected, then Left VF is loss "
                            : "";
  }

  String getSymptons() {
    return bitemporalHemiAnopia == true
        ? "Headaches\nVision loss \nHormonal symptoms ( if caused by pituitary tumors then hormone imbalances my be associated eg fatigue, weight changes) "
        : centralScotoma == true
            ? "Blind spot noticeable ,Difficulties in reading ,Blurriness "
            : contralateralInferior == true
                ? "Headaches \nReading difficulties "
                : contralateralSuperior == true
                    ? "Reading and writing difficulties \nBumping into objects\nHeadache"
                    : monocularVisionLoss == true
                        ? "Sudden or gradual vision loss \nPain \nBlurriness \nPhotophobia "
                        : contralateralHomonymous == true
                            ? "Difficulty in reading \nNavigation problems \nBumping into objects \nVisual hallucinations "
                            : "";
  }

  String getCauses() {
    return bitemporalHemiAnopia == true
        ? "Pituitary tumors ,Trauma ,Orbital tumors ,Aneurysm "
        : centralScotoma == true
            ? "ARMD\nOptic neuritis\nMacula hole. \nDiabetic retinopathy "
            : contralateralInferior == true
                ? "Trauma \nBrain tumors \nInfection. "
                : contralateralSuperior == true
                    ? "Brain tumors \nInfection\nTrauma \nSurgery "
                    : monocularVisionLoss == true
                        ? "Lesion in the optic nerve "
                        : contralateralHomonymous == true
                            ? "Trauma \nBrain tumors \nInfections( encephalitis) \nSurgery "
                            : "";
  }

  void setToFalse({required String parameter}) {
    setState(() {
      bitemporalHemiAnopia = false;
      centralScotoma = false;
      contralateralInferior = false;
      contralateralSuperior = false;
      monocularVisionLoss = false;
      contralateralHomonymous = false;
      switch (parameter) {
        case "bitemporalHemiAnopia":
          bitemporalHemiAnopia = true;
          break;
        case "centralScotoma":
          centralScotoma = true;
          break;
        case "contralateralInferior":
          contralateralInferior = true;
          break;
        case "contralateralSuperior":
          contralateralSuperior = true;
          break;
        case "monocularVisionLoss":
          monocularVisionLoss = true;
          break;
        case "contralateralHomonymous":
          contralateralHomonymous = true;
          break;
        default:
          break;
      }
    });
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
                  getVisualDefect(),
                  style: const TextStyle(color: Colors.red, fontSize: 16),
                ),
                const SizedBox(
                  height: 5,
                ),
                Stack(children: [
                  Image.asset(
                    'images/visual.png',
                    width: 500,
                    height: 600,
                  ),
                  Positioned(
                    top: 260,
                    left: 340,
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          setToFalse(parameter: "centralScotoma");
                          // debugPrint('Right occulomotor nerve tapped');
                        },
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: centralScotoma ? Colors.red : Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 295,
                    left: 300,
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          setToFalse(parameter: "monocularVisionLoss");
                          // debugPrint('Right occulomotor nerve tapped');
                        },
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: monocularVisionLoss ? Colors.red : Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 350,
                    left: 230,
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          setToFalse(parameter: "bitemporalHemiAnopia");
                          // debugPrint('Right occulomotor nerve tapped');
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: bitemporalHemiAnopia ? Colors.red : Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 380,
                    left: 270,
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          setToFalse(parameter: "contralateralHomonymous");
                          // debugPrint('Right occulomotor nerve tapped');
                        },
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: contralateralHomonymous ? Colors.red : Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 380,
                    left: 310,
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          setToFalse(parameter: "contralateralSuperior");
                          // debugPrint('Right occulomotor nerve tapped');
                        },
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: contralateralSuperior ? Colors.red : Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 480,
                    left: 265,
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          setToFalse(parameter: "contralateralInferior");
                          // debugPrint('Right occulomotor nerve tapped');
                        },
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: contralateralInferior ? Colors.red : Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
                const Center(
                  child: Text('Visual Defects'),
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
                    getVisualDefect(),
                    style: const TextStyle(color: Color(0xff000000), fontSize: 20),
                  ),
                  Text(
                    "Signs\n${getSigns()}",
                    style: const TextStyle(color: Color(0xff000000), fontSize: 20),
                  ),
                  Text(
                    "Symptons\n${getSymptons()}",
                    style: const TextStyle(color: Color(0xff000000), fontSize: 20),
                  ),
                  Text(
                    "Causes\n${getCauses()}",
                    style: const TextStyle(color: Color(0xff000000), fontSize: 20),
                  ),
                  getImage() == ""
                      ? const SizedBox.shrink()
                      : Center(
                          child: Image.asset(
                            getImage(),
                            width: 200,
                            height: 200,
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
}
