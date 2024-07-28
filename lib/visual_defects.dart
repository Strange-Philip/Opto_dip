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
  bool homonymoustwo = false;
  bool macularSpar = false;

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
                        : (contralateralHomonymous == true || homonymoustwo == true)
                            ? "Contralateral Homonymous Hemianopia"
                            : macularSpar == true
                                ? "Contralateral Homonymous Hemanopia with Macular Sparing"
                                : "No Defect";
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
                        : (contralateralHomonymous == true || homonymoustwo == true)
                            ? "images/contra_hon_hem.png"
                            : macularSpar == true
                                ? "images/con_macular_spar.png"
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
                        : (contralateralHomonymous == true || homonymoustwo == true)
                            ? "Loss of half of the VF And the other half is normal. If Right VF is affected, then Left VF is loss "
                            : macularSpar == true
                                ? "Loss of half of the VF And the other half is normal. If Right VF is affected, then Left VF is loss. Macular region is spared"
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
                        : (contralateralHomonymous == true || homonymoustwo == true)
                            ? "Difficulty in reading \nNavigation problems \nBumping into objects \nVisual hallucinations "
                            : macularSpar == true
                                ? "Difficulty seeing objects to one side., Bumping into objects., Trouble reading., Difficulty with tasks that require peripheral vision. "
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
                        : (contralateralHomonymous == true || homonymoustwo == true)
                            ? "Trauma ,Brain tumors ,Infections( encephalitis) \nSurgery "
                            : macularSpar == true
                                ? "Head injury \nBrain tumors \nStroke "
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
      macularSpar = false;
      homonymoustwo == false;
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
        case "homonymoustwo":
          homonymoustwo = true;
          break;
        case "contralateralHomonymous":
          contralateralHomonymous = true;
          break;

        case "macularSpar":
          macularSpar = true;
          break;
        default:
          break;
      }
    });
  }

  void setToTrue({required String parameter}) {
    setState(() {
      bitemporalHemiAnopia = false;
      centralScotoma = false;
      contralateralInferior = false;
      contralateralSuperior = false;
      monocularVisionLoss = false;
      contralateralHomonymous = false;
      macularSpar = false;
      homonymoustwo == false;
      switch (parameter) {
        case "bitemporalHemiAnopia":
          bitemporalHemiAnopia = false;
          break;
        case "centralScotoma":
          centralScotoma = false;
          break;
        case "contralateralInferior":
          contralateralInferior = false;
          break;
        case "contralateralSuperior":
          contralateralSuperior = false;
          break;
        case "monocularVisionLoss":
          monocularVisionLoss = false;
          break;
        case "homonymoustwo":
          homonymoustwo = false;
          break;
        case "contralateralHomonymous":
          contralateralHomonymous = false;
          break;

        case "macularSpar":
          macularSpar = false;
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
                // Text(
                //   getVisualDefect(),
                //   style: const TextStyle(color: Colors.red, fontSize: 16),
                // ),
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
                      child: Tooltip(
                        message: "Temporal Retina",
                        child: GestureDetector(
                          onTap: () {
                            centralScotoma
                                ? setToTrue(parameter: "centralScotoma")
                                : setToFalse(parameter: "centralScotoma");
                            // debugPrint('Right occulomotor nerve tapped');
                          },
                          child: Container(
                            width: centralScotoma ? 8 : 20,
                            height: centralScotoma ? 40 : 20,
                            // alignment: Alignment(20, -30),
                            decoration: BoxDecoration(
                              color: centralScotoma ? Colors.red : Colors.transparent,
                              border: centralScotoma ? null : Border.all(color: Colors.black),
                              borderRadius: centralScotoma ? null : BorderRadius.circular(50),
                            ),
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
                      child: Tooltip(
                        message: "Optic Nerve",
                        child: GestureDetector(
                          onTap: () {
                            monocularVisionLoss
                                ? setToTrue(parameter: "monocularVisionLoss")
                                : setToFalse(parameter: "monocularVisionLoss");

                            // debugPrint('Right occulomotor nerve tapped');
                          },
                          child: Container(
                            width: monocularVisionLoss ? 8 : 20,
                            height: monocularVisionLoss ? 30 : 20,
                            decoration: BoxDecoration(
                              color: monocularVisionLoss ? Colors.red : Colors.transparent,
                              border: monocularVisionLoss ? null : Border.all(color: Colors.black),
                              borderRadius: monocularVisionLoss ? null : BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: bitemporalHemiAnopia ? 340 : 350,
                    left: bitemporalHemiAnopia ? 240 : 230,
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Tooltip(
                        message: "Optic Chiasm",
                        child: GestureDetector(
                          onTap: () {
                            bitemporalHemiAnopia
                                ? setToTrue(parameter: "bitemporalHemiAnopia")
                                : setToFalse(parameter: "bitemporalHemiAnopia");

                            // debugPrint('Right occulomotor nerve tapped');
                          },
                          child: Container(
                            width: bitemporalHemiAnopia ? 8 : 30,
                            height: bitemporalHemiAnopia ? 40 : 30,
                            decoration: BoxDecoration(
                              color: bitemporalHemiAnopia ? Colors.red : Colors.transparent,
                              border: bitemporalHemiAnopia ? null : Border.all(color: Colors.black),
                              borderRadius: bitemporalHemiAnopia ? null : BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: contralateralHomonymous ? 370 : 380,
                    left: 270,
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Tooltip(
                        message: "Optic Tract",
                        child: GestureDetector(
                          onTap: () {
                            contralateralHomonymous
                                ? setToTrue(parameter: "contralateralHomonymous")
                                : setToFalse(parameter: "contralateralHomonymous");

                            // debugPrint('Right occulomotor nerve tapped');
                          },
                          child: Container(
                            width: contralateralHomonymous ? 8 : 20,
                            height: contralateralHomonymous ? 30 : 20,
                            decoration: BoxDecoration(
                              color: contralateralHomonymous ? Colors.red : Colors.transparent,
                              border:
                                  contralateralHomonymous ? null : Border.all(color: Colors.black),
                              borderRadius:
                                  contralateralHomonymous ? null : BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 400,
                    left: homonymoustwo ? 290 : 280,
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Tooltip(
                        message: "LGN",
                        child: GestureDetector(
                          onTap: () {
                            homonymoustwo
                                ? setToTrue(parameter: "homonymoustwo")
                                : setToFalse(parameter: "homonymoustwo");

                            // debugPrint('Right occulomotor nerve tapped');
                          },
                          child: Container(
                            width: homonymoustwo ? 8 : 20,
                            height: homonymoustwo ? 30 : 20,
                            decoration: BoxDecoration(
                              color: homonymoustwo ? Colors.red : Colors.transparent,
                              border: homonymoustwo ? null : Border.all(color: Colors.black),
                              borderRadius: homonymoustwo ? null : BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 385,
                    left: 308,
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Tooltip(
                        message: "Inferior Optic Radiations",
                        child: GestureDetector(
                          onTap: () {
                            contralateralSuperior
                                ? setToTrue(parameter: "contralateralSuperior")
                                : setToFalse(parameter: "contralateralSuperior");

                            // debugPrint('Right occulomotor nerve tapped');
                          },
                          child: Container(
                            width: contralateralSuperior ? 8 : 20,
                            height: contralateralSuperior ? 30 : 20,
                            decoration: BoxDecoration(
                              color: contralateralSuperior ? Colors.red : Colors.transparent,
                              border:
                                  contralateralSuperior ? null : Border.all(color: Colors.black),
                              borderRadius:
                                  contralateralSuperior ? null : BorderRadius.circular(50),
                            ),
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
                      child: Tooltip(
                        message: "Superior Optic Radiations",
                        child: GestureDetector(
                          onTap: () {
                            contralateralInferior
                                ? setToTrue(parameter: "contralateralInferior")
                                : setToFalse(parameter: "contralateralInferior");
                          },
                          child: Container(
                            width: contralateralInferior ? 8 : 20,
                            height: contralateralInferior ? 30 : 20,
                            decoration: BoxDecoration(
                              color: contralateralInferior ? Colors.red : Colors.transparent,
                              border:
                                  contralateralInferior ? null : Border.all(color: Colors.black),
                              borderRadius:
                                  contralateralInferior ? null : BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 520,
                    left: 250,
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Tooltip(
                        message: "Primary visual cortex",
                        child: GestureDetector(
                          onTap: () {
                            macularSpar
                                ? setToTrue(parameter: "macularSpar")
                                : setToFalse(parameter: "macularSpar");

                            // debugPrint('Right occulomotor nerve tapped');
                          },
                          child: Container(
                            width: macularSpar ? 8 : 20,
                            height: macularSpar ? 70 : 20,
                            decoration: BoxDecoration(
                              color: macularSpar ? Colors.red : Colors.transparent,
                              border: macularSpar ? null : Border.all(color: Colors.black),
                              borderRadius: macularSpar ? null : BorderRadius.circular(50),
                            ),
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
                  getSigns() == ""
                      ? const SizedBox.shrink()
                      : Text(
                          "Signs\n${getSigns()}",
                          style: const TextStyle(color: Color(0xff000000), fontSize: 20),
                        ),
                  getSymptons() == ""
                      ? const SizedBox.shrink()
                      : Text(
                          "Symptons\n${getSymptons()}",
                          style: const TextStyle(color: Color(0xff000000), fontSize: 20),
                        ),
                  getCauses() == ""
                      ? const SizedBox.shrink()
                      : Text(
                          "Causes\n${getCauses()}",
                          style: const TextStyle(color: Color(0xff000000), fontSize: 20),
                        ),
                  const SizedBox(
                    height: 20,
                  ),
                  getImage() == ""
                      ? const SizedBox.shrink()
                      : const Center(
                          child: Text(
                            "Left            Right",
                            style: TextStyle(color: Color(0xff000000), fontSize: 20),
                          ),
                        ),
                  getImage() == ""
                      ? const SizedBox.shrink()
                      : Center(
                          child: Image.asset(
                            getImage(),
                            width: 200,
                            height: 100,
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
