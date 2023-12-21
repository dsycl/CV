import 'package:flutter/material.dart';
import 'personal_info_screen.dart';
import 'educational_background.dart';
import 'skills.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Curriculum Vitae",
    home: Firstpage(),
  ));
}

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('My Curriculum Vitae'),
        ),
        backgroundColor: Color.fromRGBO(236, 114, 0, 0.957),
      ),
        body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/avatar.jpg',
                ),
                radius: 60.0,
              ),
            ),
            Divider(height: 90, color: Color.fromARGB(255, 46, 185, 150)),
            Text(
              "Name:",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              "Daisy S. Acol",
              style: TextStyle(
                  color: Color.fromARGB(255, 226, 131, 235),
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text(
              "Position:",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              "Web Designer",
              style: TextStyle(
                  color: Color.fromARGB(255, 226, 131, 235),
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.mail, color: Colors.white),
                SizedBox(width: 8.0),
                Text(
                  "daisyacol2@gmail.com",
                  style: TextStyle(color: Color.fromARGB(255, 226, 131, 235)),
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.call, color: Colors.white),
                SizedBox(width: 8.0),
                Text(
                  "+639662844932",
                  style: TextStyle(color: Color.fromARGB(255, 226, 131, 235)),
                )
              ],
            ),
            Divider(height: 90, color: Color.fromARGB(255, 46, 185, 150)),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PersonalInfoScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.info, color: Colors.white),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => EducationalBackgroundScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.school, color: Colors.white),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SkillsScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.settings, color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
     
    
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
    );
  }
}