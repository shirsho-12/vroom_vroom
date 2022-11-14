import 'package:flutter/material.dart';

export 'chope_body.dart';

class ChopeFace extends StatelessWidget {
  const ChopeFace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      // padding: const EdgeInsets.only(top: 20), // Optional padding
      child: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0,
        title: SizedBox(
          height: 150,
          width: width,
          child: Image.asset(
            'assets/images/idle_menu.gif',
            width: 400,
            // height: 120,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
    );
  }
}

class ChopeBody extends StatelessWidget {
  const ChopeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Image.asset('assets/images/chope_screen.png'),
    );
  }
}
