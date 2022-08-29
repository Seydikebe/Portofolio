import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Projets réalisés"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 49.0),
        child: GridView.count(
          crossAxisCount: 1,
          children: [
            // card 4
            Card(
              margin: EdgeInsets.all(120),
              shape: CircleBorder(
                side: BorderSide(width: 1, color: Colors.white),
              ),
              child: InkWell(
              onTap:() => null,
                splashColor: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.bubble_chart,
                        size: 35.0,
                        color: Colors.red,
                      ),
                      Divider(),
                      Text("En cours",style:TextStyle(color: Colors.black),),
                    ],
                  ),
                ),
              ),
            ),
           
           
          ],
        ),
      ),
      

    );
    
  }
}