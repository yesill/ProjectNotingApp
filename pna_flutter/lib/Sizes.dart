import 'package:flutter/material.dart';


const int gridViewCrossAxisCount = 3;

Size sizeOfHeader = const Size(1, 0.1);
Size sizeOfGridView = const Size(1, 2);
Size sizeOfMainColumn = const Size(0.7, 1);
Size sizeOfGridElementPadding = Size((sizeOfGridView.width / gridViewCrossAxisCount) * 0.03, 1);

// ----- Methods -----

Size getSize(Size item, BuildContext context){
  return Size(
    MediaQuery.of(context).size.width * item.width,
    MediaQuery.of(context).size.height * item.height
  );
}


