import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           Text ("Hello world", style: TextStyle(color: Colors.red)),
           SizedBox(height: 50),
           Text ("This is it pancit"),

           Row(
             children:[
             Text("canton lucky me"),
             SizedBox(width: 50),
             Text("just lucky me"),
            
            ]
           ),
          
          Container(
          height: 450,
          width: 300,
          color: Colors.blueAccent,
          child: Center(child: Text("Hello world"))
          
          ),
          
        ],
      ),
    );
  }
}