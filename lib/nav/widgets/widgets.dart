export 'nav_body.dart';

import 'package:flutter/material.dart';

import 'book_av.dart';

class BookAV extends StatelessWidget {
  const BookAV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        BookAVText(),
      ],
    );
  }
}
