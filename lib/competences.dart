import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Competences extends StatefulWidget {
  const Competences({Key? key}) : super(key: key);

  @override
  State<Competences> createState() => _CompetencesState();
}

class _CompetencesState extends State<Competences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comptences'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 69.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: [
            // card 4
            Card(
              margin: EdgeInsets.all(20),
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
                        FontAwesomeIcons.python,
                        size: 35.0,
                        color: Colors.blue,
                      ),
                      Divider(),
                      Text("Python",style:TextStyle(color: Colors.black),),
                    ],
                  ),
                ),
              ),
            ),
            // card rond
           Card(
              margin: EdgeInsets.all(20),
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
                        Icons.javascript,
                        size: 45.0,
                        color: Colors.yellow,
                      ),
                      Divider(),
                      Text("JavaScript"),
                    ],
                  ),
                ),
              ),
            ),
            // card ----------
             Card(
              margin: EdgeInsets.all(20),
              shape: CircleBorder(
                side: BorderSide(width: 1, color: Colors.white),
              ),
              child: InkWell(
              onTap:() => null,
                splashColor: Colors.indigo,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        FontAwesomeIcons.java,
                        size: 35.0,
                        color: Colors.orange,
                      ),
                      Divider(),
                      Text("Java"),
                    ],
                  ),
                ),
              ),
            ),
            // car------
             Card(
              margin: EdgeInsets.all(20),
              shape: CircleBorder(
                side: BorderSide(width: 1, color: Colors.white),
              ),
              child: InkWell(
              onTap:() => null,
                splashColor: Colors.indigo,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.flutter_dash,
                        size: 35.0,
                        color: Colors.purple,
                      ),
                      Divider(),
                      Text("Flutter"),
                    ],
                  ),
                ),
              ),
            ),
            // car--------
             Card(
              margin: EdgeInsets.all(20),
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
                        Icons.html,
                        size: 35.0,
                        color: Colors.red,
                      ),
                      Divider(),
                      Text("Html/Css"),
                    ],
                  ),
                ),
              ),
            ),
            // car---------------
             Card(
              margin: EdgeInsets.all(20),
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
                        Icons.php,
                        size: 35.0,
                        color: Colors.purple,
                      ),
                      Divider(),
                      Text("Php"),
                    ],
                  ),
                ),
              ),
            
      
            ),
            // card
             Card(
              margin: EdgeInsets.all(20),
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
                        Icons.wordpress,
                        size: 35.0,
                        color: Colors.blueAccent,
                      ),
                      Text("Wordpress"),
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
