import 'package:flutter/material.dart';

class EducationalBackgroundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Educational Background"),
      ),
      body: Container(
        color: Color.fromARGB(
            255, 1, 11, 22), // Set the background color to black
        padding: EdgeInsets.all(20), // Add padding for spacing
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Add your educational background information here as Text widgets in a Column
            _buildInfoText("Tertiary Education:"),
            Divider(height: 20, color: Color.fromARGB(255, 46, 185, 150)),
            _buildInfoText("Bachelor of Science in Information Technology"),
            _buildInfoText(
                "The Philippine College of Science and Technology (PhilCST)"),
            _buildInfoText("Graduation Year: 2024"),
            SizedBox(height: 20), // Add some spacing between sections
            _buildInfoText("Secondary Education:"),
            Divider(height: 20, color: Color.fromARGB(255, 46, 185, 150)),
            _buildInfoText("Mabalbalino National High School"),
            _buildInfoText("Graduation Year: 2019"),
            SizedBox(height: 20), // Add some spacing between sections
            _buildInfoText("Primary Education:"),
            Divider(height: 20, color: Color.fromARGB(255, 46, 185, 150)),
            _buildInfoText("Mabalbalino Elementary School"),
            _buildInfoText("Graduation Year: 2013"),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoText(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
          color: Color.fromARGB(255, 226, 131, 235), // Set the text color to yellow
          fontSize: 16, // Set the font size
          fontWeight: FontWeight.bold, // Set the font weight to bold
          fontStyle: FontStyle.italic, // Set the font style to italic
        ),
      ),
    );
  }
}
