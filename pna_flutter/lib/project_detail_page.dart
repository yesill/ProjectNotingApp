import 'package:flutter/material.dart';

class ProjectDetailPage extends StatefulWidget {
  const ProjectDetailPage({
    super.key
  });

  @override
  State<ProjectDetailPage> createState() => _ProjectDetailPageState();
}

class _ProjectDetailPageState extends State<ProjectDetailPage> {
  bool leftBarOn = true;
  int leftBarFlex = 20, closeLeftBarButtonFlex = 1, rightBarFlex = 80;

  BoxDecoration closeLeftBarDecoration = const BoxDecoration(
    color: Colors.black,
  );

  void hoverCloseLeftBarButton(bool isHover){
    setState(() {
      if(isHover){
        closeLeftBarDecoration = BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.white, width: 3),
        );
      }
      else{
        closeLeftBarDecoration = const BoxDecoration(
          color: Colors.black,
        );
      }
    });
  }

  void toggleLeftBar(){
    setState(() {
      if(leftBarOn){
        leftBarFlex -= 20;  rightBarFlex += 20;
        leftBarOn = false;
      }
      else{
        leftBarFlex += 20;  rightBarFlex -= 20;
        leftBarOn = true;
      }
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
              child: Container(color: Colors.green, alignment: Alignment.center,
              child: const Text("Files etc.", textAlign: TextAlign.center, style: TextStyle(fontSize: 36)),
              )
            ),
            Expanded(
              flex: closeLeftBarButtonFlex,
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                onEnter: (event) => {hoverCloseLeftBarButton(true)},
                onExit: (event) => {hoverCloseLeftBarButton(false)},
                child: GestureDetector(
                  onTap: (){toggleLeftBar();},
                  child: Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    decoration: closeLeftBarDecoration,
                  ),
                ),
              ),
            ),
            Expanded(flex: rightBarFlex, child: Container(color: Colors.amber, alignment: Alignment.center,
              child: const Text("Content", textAlign: TextAlign.center, style: TextStyle(fontSize: 36)),
            )),
          ],
        )
      ),
      // drawer: NavigationDrawer(
      //   children: [
      //     Container(color: Colors.amber,)
      //   ],
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: changeLeftBarFlex,
      //   tooltip: "menu",
      //   shape: const BeveledRectangleBorder(),
      //   child: const Icon(Icons.menu),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}