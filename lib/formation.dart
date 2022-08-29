import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'formation.dart';
import 'certificat.dart';
import 'projet.dart';
class MyCustomWidget extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Formation'),
          onPressed: null,
        ),
      ),
    );
  }
}

class SlideAnimation4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("FORMATION"),
        centerTitle: true,
        brightness: Brightness.dark,
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  elevation: 11,
                  child: ListTile(
                    leading: Icon(
                      Icons.school,
                      color: Colors.black,
                    ),
                    title: Text("Bac S2  -2019"),
                    subtitle: Text("Lycée Zone de recasement de Keur Massar"),
                  ),
                ),
                Card(
                  elevation: 11,
                  child: ListTile(
                    leading: Icon(
                      Icons.school,
                      color: Colors.black,
                    ),
                    title: Text("L1 en informatique 2019-2020"),
                    subtitle:
                        Text("Haute Ecole de Management et d'Informatique"),
                  ),
                ),
                Card(
                  elevation: 11,
                  child: ListTile(
                    leading: Icon(
                      Icons.school,
                      color: Colors.black,
                    ),
                    title: Text("L2 en informatique 2020-2021"),
                    onTap: (){},
                    subtitle:
                        Text("Haute Ecole de Management et d'Informatique"),
                  ),
                ),
                Card(
                  elevation: 11,
                  child: ListTile(
                    leading: Icon(
                      Icons.school,
                      color: Colors.black,
                    ),
                    title: Text("L3 en informatique 2021-2022"),
                    subtitle:
                        Text("Haute Ecole de Management et d'Informatique"),
                  ),
                ),
                Card(
                  elevation: 11,
                  child: ListTile(
                    leading: Icon(
                      Icons.school,
                      color: Colors.black,
                    ),
                    title: Text("Dev Mobile Flutter Août 2022"),
                    subtitle:
                        Text("Xarala Academy"),
                  ),
                ),
                // Card(
                //   child: ListTile(
                //     title: Text("Compétences",
                //     style: TextStyle(fontSize: 20),
                //     textAlign: TextAlign.center,),
                //   ),

                // ),
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}
