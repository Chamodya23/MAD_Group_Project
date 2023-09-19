import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:unity_world/components/back_notifi_account.dart';

class DsheadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(
       

       
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Mr. Pramudya Thilakarathne',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Senior Lecturer / Head',
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 20),
             ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child:Image.asset(
              'assets/images/pramudya.webp', // Assuming the image is located in the 'assets' folder
              width: 150, // Adjust the width as needed
            ),
             ),
            SizedBox(height: 20),
           _buildCurvedContainer(
            context,
            Container(
              width: 300,
              padding: EdgeInsets.all(20),
              color: Color.fromARGB(255, 15, 26, 88),
              child: Column(
                children: [
                  Text(
                    'CONTACT INFO',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                 
                ],
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
Widget _buildCurvedContainer(BuildContext context, Widget child) {
    return Container(
      margin:
       EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius:
         BorderRadius.circular(20), // Adjust the radius as needed
        color: Color.fromARGB(255, 15, 26, 88),
      ),
      child: child,
    );
  }

void main() {
  runApp(MaterialApp(
    home: DsheadPage(),
  ));
}
