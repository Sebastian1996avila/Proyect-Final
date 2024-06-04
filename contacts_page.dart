import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Llama Paradise'),
        backgroundColor: Colors.black,
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Column(
                  children: [
                    Image.asset('assets/gallery/llama1.jpg', height: 200),
                    SizedBox(height: 20),
                    Text(
                      'Explore the World of Llamas!',
                      style: TextStyle(
                        fontSize: 24, 
                        fontWeight: FontWeight.bold, 
                        color: Colors.white
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              buildSectionTitle('Contact Us', Colors.orangeAccent),
              buildCardContent(
                'We would love to hear from you! Reach out to us at contact@llamaparadise.com.',
                Colors.white, Colors.black,
              ),
              SizedBox(height: 20),
              buildSectionTitle('Positive Vibes', Colors.lightGreenAccent),
              buildCardContent(
                '“Llamas are a source of joy and positivity. Embrace the llama spirit!”',
                Colors.white, Colors.black,
              ),
              buildCardContent(
                '“Every day is a great day with llamas!”',
                Colors.white, Colors.black,
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orangeAccent,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/contacts');
                  },
                  child: Text(
                    'Contact Us',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }

  Widget buildSectionTitle(String title, Color color) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 22, 
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }

  Widget buildCardContent(String content, Color textColor, Color bgColor) {
    return Card(
      color: bgColor,
      margin: EdgeInsets.symmetric(vertical: 10),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          content,
          style: TextStyle(
            fontSize: 18,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
