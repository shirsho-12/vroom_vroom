import 'package:flutter/material.dart';
import 'dart:developer' as devtools show log;

class TellJoke extends StatefulWidget {
  const TellJoke({Key? key}) : super(key: key);

  @override
  State<TellJoke> createState() => _TellJokeState();
}

class _TellJokeState extends State<TellJoke> {
  final String _joke = 'Why did the autonomous vehicle cross the road?';
  final String _punchline = 'Because the traffic light turned green!';
  bool _showPunchline = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            GestureDetector(
              onTap: () {
                devtools.log("Show punchline");
                setState(() {
                  _showPunchline = true;
                });
              },
              child: Container(
                width: 240.0,
                height: 240.0,
                decoration: const BoxDecoration(
                  color: Color(0xD9D9D9FF),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: _showPunchline ? _punchline : _joke,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.2,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
