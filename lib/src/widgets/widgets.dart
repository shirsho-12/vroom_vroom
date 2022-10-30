import 'package:flutter/material.dart';

//! Is the padding needed?

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: const Alignment(0.0, 0.0),
          colors: [
            Colors.blueAccent.withOpacity(0.9),
            Colors.indigoAccent.withOpacity(0.9),
          ],
        ),
      ),
    ));
  }
}

class BotFace extends StatelessWidget {
  const BotFace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10), // Optional padding
      child: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0,
        title: Image.asset(
          'assets/images/bot_face.png',
          width: 400,
          height: 80,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
    );
  }
}
