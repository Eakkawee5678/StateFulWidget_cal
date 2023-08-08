import 'package:flutter/material.dart';

class Demost extends StatefulWidget {
  const Demost({super.key});

  @override
  State<Demost> createState() => _DemostState();
}

class _DemostState extends State<Demost> {
  int couter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful Demo")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Counter : $couter'),
            ElevatedButton(
              onPressed: () {
               setState(() {
                  couter++;
               });
                }, 
            child: Text('Click Me!'))
          ],
        ),
      ),
    );
  }
}
