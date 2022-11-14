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
  const BotFace({Key? key, required this.imagePath}) : super(key: key);
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    int width = MediaQuery.of(context).size.width.toInt();
    return Align(
        alignment: const Alignment(0, -0.9),
        child: SizedBox(
          height: 150,
          width: width.toDouble(),
          child: Image.asset(
            imagePath,
            width: 400,
            // height: 120,
          ),
        ));

    // return PreferredSize(
    //   preferredSize: const Size.fromHeight(400.0),
    //   child: AppBar(
    //     backgroundColor: Colors.transparent,
    //     bottomOpacity: 0.0,
    //     elevation: 0,
    //     title: SizedBox(
    //       width: width.toDouble(),
    //       height: 80,
    //       child: Image.asset(
    //         imagePath,
    //         width: width * 0.9,
    //         // height: 200,
    //         fit: BoxFit.fill,
    //       ),
    //     ),
    //     centerTitle: true,
    //     automaticallyImplyLeading: false,
    //   ),
    // );
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
