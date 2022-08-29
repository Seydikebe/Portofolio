import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Experiencess extends StatefulWidget {
  const Experiencess({Key? key}) : super(key: key);

  @override
  State<Experiencess> createState() => _ExperiencessState();
}

class _ExperiencessState extends State<Experiencess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
        Text("Experience",style: TextStyle(fontSize: 24),),
        actions: [
          Icon(FontAwesomeIcons.smoking),
        ],
      ),
      body:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
       children: [
        Text("Competences",style: 
        TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.red,
        ),textAlign: TextAlign.center),
       ],
      ),   
    );
    
  }
}