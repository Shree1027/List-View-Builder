import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar:AppBar(
          title: const Text(
            "ListView Builder",
            style: TextStyle(
              fontSize: 30,
              fontWeight:FontWeight.w500, 
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),

        body: ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext context, int index){
            return Text(
              "Index: $index",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            );
          }
        ),
      
      ),
    );
  }
}
