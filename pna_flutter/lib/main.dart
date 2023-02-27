import 'package:flutter/material.dart';
import 'package:pna_flutter/main_view.dart';
import 'package:pna_flutter/sizes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int projectNumber = 0;

  void addNewProject(){
    setState(() {
      projectNumber++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: getSize(sizeOfMainColumn, context).width,
          height: getSize(sizeOfMainColumn, context).height,
          // guide
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 255, 0, 0))
          ),
          child: MainView(projectNumber: projectNumber),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addNewProject,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

