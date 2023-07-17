import 'package:flutter/material.dart';

class InstructionPage extends StatefulWidget {
  const InstructionPage({super.key});

  @override
  State<InstructionPage> createState() => _InstructionPageState();
}

class _InstructionPageState extends State<InstructionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "✍🏽Instructions",
                      style: TextStyle(
                          color: Colors.blue.shade900, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Click on components of the diagram to create a lesion on the nerve.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      "Double click to select a nerve in a collection to cause a lesion.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      "Hover on the box on the bottom right to change the position of gaze based on the direction in which you move your mouse.",
                      maxLines: 3,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Container(
                height: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "📍Key",
                      style: TextStyle(
                          color: Colors.blue.shade900, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "MR: Medial rectus",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      "LR: Lateral rectus",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      "III: Oculomotor nerve",
                      maxLines: 3,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      "IV: Trochlear nerve",
                      maxLines: 3,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      "VI: Abducens nerve",
                      maxLines: 3,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      "PGC: Pontine gaze center",
                      maxLines: 3,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      "MLF: Medial longitudinal fasciculus",
                      maxLines: 3,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      "riMLF: Rostral interstitial medial longitudinal fasciculus",
                      maxLines: 3,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
