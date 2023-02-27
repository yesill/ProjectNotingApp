import 'package:flutter/material.dart';
import 'package:pna_flutter/Header.dart';
import 'package:pna_flutter/Sizes.dart';
import 'GridCard.dart';

class MainView extends StatelessWidget {
  final int projectNumber;

  const MainView({
    super.key,
    required this.projectNumber,
  });

  StatelessWidget addGridCard(){
    if (projectNumber <= 0){
      return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top: 50),
        child: const Text(
          "No Projects Yet!",
          textScaleFactor: 2,
          textAlign: TextAlign.center,
        ),
      );
    }
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: gridViewCrossAxisCount,
      shrinkWrap: true,
      children: [
        for(int i=0; i<projectNumber; i++) const GridCard(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: [
            const Header(),
            Container(
              //height: getSize(sizeOfGridView, context).height,
              // guide
              // decoration: BoxDecoration(
              //   border: Border.all(color: const Color.fromARGB(255, 0, 255, 0))
              // ),
              child: addGridCard(),
            ),
          ],
        ),
    );
  }
}
