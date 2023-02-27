import 'package:flutter/material.dart';
import 'Sizes.dart';

class GridCard extends StatelessWidget {
  const GridCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const colorTitle = Color.fromARGB(255, 237, 25, 25);
    const colorContent = Color.fromARGB(255, 197, 232, 20);
    const colorDetails = Color.fromARGB(255, 235, 99, 14);

    return Padding(
      padding: EdgeInsets.all(getSize(sizeOfGridElementPadding, context).width),
      child: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(getSize(sizeOfGridElementPadding, context).width),
        child: Container(
          // guide
          color: Colors.amber,
          child: Column(
            children: [
              createExpanded(1, colorTitle, "Project Title"),
              createExpanded(3, colorContent, "Content"),
              createExpanded(1, colorDetails, "Details (files etc.)"),
            ],
          )
        ),
      ),
    );
  }

  Expanded createExpanded(int flex, Color color, String text) {
    return Expanded(
      flex: flex,
      child: Container(
        color: color,
        alignment: Alignment.center,
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}