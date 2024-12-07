import 'package:flutter/material.dart';

class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: const SingleChildScrollView(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LinearProgressIndicator(
              color: Colors.blue,
               value: 4,
        
            ),
            SizedBox(
              height: 250,
                width: 250,
                child: Center(
                    child: Image(
                      fit: BoxFit.fill,
                        image: AssetImage("assets/images/pic4.jpg")))),
            Text(
              "Setting up",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "your account",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text("1"),
              ),
              trailing: Icon(
                Icons.check_circle,
                color: Colors.blue,
              ),
              title: Text("Phone verified"),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text("2"),
              ),
              trailing: Icon(
                Icons.check_circle,
                color: Colors.blue,
              ),
              title: Text("Checking up document ID"),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text("3"),
              ),
              trailing: Icon(
                Icons.check_circle,
                color: Colors.blue,
              ),
              title: Text("Verifying photo"),
            ),
        
          ],
        ),
      ),
    );
  }
}
