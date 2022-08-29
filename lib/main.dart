import 'package:flutter/material.dart';
// import 'package:portofolio/lien.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'competences.dart';
import 'formation.dart';
import 'certificat.dart';
import 'projet.dart';
// import 'lien.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/formation': (context) => SlideAnimation4(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/certificat': (context) => Certificat(),
         '/competences': (context) => Competences(),
        '/projet': (context) => Projects(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Accueil(),
    );
  }
}

// Accueil
class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);
  void _lienurl(String _url)async{
    if(!await launch(_url))throw 'erreur $_url';
  }

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        title: Text("SEYDINA KEBE"),
      ),
       drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Seydina kebe',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text('Flutter developper'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/seydina.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.mail, color: Colors.redAccent),
              title: Text('E-mail'),
              onTap: () => launch('mailto:kebeseydina56@gmail.com'),
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.linkedinIn,
                color: Colors.blue,
              ),
              title: Text('LinkedIn'),
              onTap: () => launch('https://www.linkedin.com/in/seydina-kebe-ab63821b9'),
            ),
            ListTile(
              leading: Icon(
                Icons.facebook,
                color: Colors.blue,
              ),
              title: Text('Facebook'),
              // ignore: deprecated_member_use
              onTap: () => launch('https://www.facebook.com/profile.php?id=100005586707855'),
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.twitter,
                color: Color.fromARGB(255, 25, 163, 232),
              ),
              title: Text('Twitter'),
              onTap: () => launch('https://twitter.com/SeydinaKebe?t=ljrG1xLKYS8JOKCZEnUTKA&s=09'),
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.github,
                color: Colors.black,
              ),
              title: Text('Github'),
              onTap: () => launch('https://github.com/Seydikebe'),
            ),
            Divider(),
            ListTile(
              title: Text('Exit'),
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      // body
      body: Container(
        padding: EdgeInsets.all(10.0),
        
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            Card(
              margin: EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/formation');
                },
                splashColor: Colors.indigo,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.school,
                        size: 25.0,
                        color: Colors.indigo,
                      ),
                      Text("Formation"),
                    ],
                  ),
                ),
              ),
            ),
            // car 2
            Card(
              margin: EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/certificat');
                },
                splashColor: Colors.indigo,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        FontAwesomeIcons.certificate,
                        size: 25.0,
                        color: Colors.red,
                      ),
                      Text("Certificat"),
                    ],
                  ),
                ),
              ),
            ),
            //card 3
            Card(
              margin: EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/competences');
                },
                splashColor: Colors.indigo,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        FontAwesomeIcons.laptop,
                        color: Colors.green,
                        size: 25.0,
                      ),
                      Text("Competences"),
                    ],
                  ),
                ),
              ),
            ),
            // card 4
            Card(
              margin: EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/projet');
                },
                splashColor: Colors.indigo,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.bubble_chart,
                        size: 25.0,
                        color: Colors.purple,
                      ),
                      Text("Projets"),
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
