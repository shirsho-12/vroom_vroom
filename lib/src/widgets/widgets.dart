import 'package:flutter/material.dart';

//! Is the padding needed?
// NOTE: To implement localization, the NavAppBar widget has to be Stateful

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
            Colors.black12.withOpacity(0.7),
            Colors.black45.withOpacity(0.9),
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
      padding: const EdgeInsets.only(top: 20), // Optional padding
      child: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0,
        title: Image.asset(
          'assets/images/bot_face.png',
          width: 400,
          height: 120,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
    );
  }
}

class NavAppBar extends StatelessWidget {
  const NavAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // const BackButton(
        //   color: Colors.white,
        // ),
        IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 40,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
                color: Colors.white, style: BorderStyle.solid, width: 0.80),
          ),
          child: DropdownButton(
            borderRadius: BorderRadius.circular(10),
            style: const TextStyle(
              color: Colors.white,
            ),
            underline: Container(),
            dropdownColor: Colors.black87,
            icon: const Icon(
              Icons.language,
              color: Colors.white,
            ),
            items: const [
              DropdownMenuItem(
                value: Locale('en'),
                child: Text('English'),
              ),
              DropdownMenuItem(
                value: Locale('ar'),
                child: Text('العربية'),
              ),
            ],
            onChanged: (v) => {},
            value: const Locale('en'),
            focusColor: Colors.black,
            // onChanged: (v) => setState(() { helper.onLocaleChanged( v )}),
            // value: AppLocalizations.of(context).locale,
          ),
        ),
      ],
    );
  }
}
