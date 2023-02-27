import 'package:flutter/material.dart';
import 'package:pna_flutter/sizes.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    const textStyle = TextStyle(
      fontSize: 36,
      color: Color.fromARGB(255, 0, 0, 0),
    );

    return Container(
      color: const Color.fromARGB(50, 0, 0, 120),
      height: getSize(sizeOfHeader, context).height,
      width: getSize(sizeOfHeader, context).width,
      alignment: Alignment.center,
      child: const Text(
        "My Projects",
        textAlign: TextAlign.center,
        //textScaleFactor: 3,
        style: textStyle,
      ),
    );
  }
}
