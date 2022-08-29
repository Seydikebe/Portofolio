import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Certificat extends StatefulWidget {
  const Certificat({Key? key}) : super(key: key);

  @override
  State<Certificat> createState() => _CertificatState();
}
class _CertificatState extends State<Certificat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Certfication"),
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
                      FontAwesomeIcons.java,
                      color: Colors.black,
                    ),
                    title: Text("java"),
                    onTap:() => launch('https://www.linkedin.com/learning/certificates/b2421473c45fc08cfe1cec608e16337504e4516ba88917686b05b0015b11fd95?trk=share_certificate'),
                    subtitle: Text("certificat cours java Linkedin"),
                  ),
                ),
                
                Card(
                  elevation: 11,
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.python,
                      color: Colors.black,
                    ),
                    title: Text("Pyhon"),
                    onTap:() => launch('https://www.credly.com/badges/f4a4aa02-f4a2-446b-b0ab-bb9ce0a34b38/public_url'),
                    subtitle:
                        Text("Cisco Networking Academy"),
                  ),
                ),
                
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
    
  }
}