import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Container(
                child: Text(" $number ",style: TextStyle(fontSize: 50),),
                
              ),
            )),
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                     Expanded (
                      flex: 1,
                        child: SizedBox(
                          width: double.infinity,
                          height: 100, 
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              number = 1;
                            });
                          }, 
                          
                          child: 
                          Text('1')),
                        ),
                      ),
                      Expanded (
                      flex: 1,
                        child: SizedBox(
                          width: double.infinity,
                          height: 100, 
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              number = 2;
                            });
                          }, 
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          child: 
                          Text('2')),
                        ),
                      ),
                      
                    ],
                  ),
                  Row(
                    children: [
                     Expanded (
                      flex: 1,
                        child: SizedBox(
                          width: double.infinity,
                          height: 100, 
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              number = 3;
                            });
                          }, 
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow,
                          ),
                          child: 
                          Text('3')),
                        ),
                      ),
                      Expanded (
                      flex: 1,
                        child: SizedBox(
                          width: double.infinity,
                          height: 100, 
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              number = 4;
                            });
                          }, 
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightGreen,
                          ),
                          child: 
                          Text('4')),
                        ),
                      ),
                      
                    ],
                  )
                ],
              ),
            ))
        ],
      ),
    );;
  }
}