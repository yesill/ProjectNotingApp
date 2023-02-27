import 'package:flutter/material.dart';

class ProjectDetailPage extends StatefulWidget {
  const ProjectDetailPage({
    super.key
  });

  @override
  State<ProjectDetailPage> createState() => _ProjectDetailPageState();
}

class _ProjectDetailPageState extends State<ProjectDetailPage> {
  int leftBarFlex = 1;

  void changeLeftBarFlex(){
    setState(() {
      if(leftBarFlex == 1){ leftBarFlex = 0;  }
      else if(leftBarFlex == 0){  leftBarFlex = 1;  }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Detail Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: leftBarFlex,
              child: GestureDetector(
                onTap: (){changeLeftBarFlex();},
                child: Container(
                  color: Colors.green
                )
              )
            ),
            Expanded(
              flex: 5-leftBarFlex,
              child: Container(
                color: Colors.amber
              )
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeLeftBarFlex,
        shape: const BeveledRectangleBorder(),
        child: const Icon(Icons.menu),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}