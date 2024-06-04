import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_notifier.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('World of Llamas'),
        backgroundColor: Color.fromRGBO(255, 235, 59, 1),
        toolbarHeight: 100,
            actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () {
              Provider.of<ThemeNotifier>(context, listen: false).toggleTheme();
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 235, 59, 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      color: Color.fromARGB(236, 7, 7, 7),
                      fontSize: 20,
                    ),
                  ),
                  Icon(
                    Icons.home,
                    color: Color.fromARGB(255, 8, 8, 8),
                    size: 50,
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('About Llamas'),
              onTap: () {
                // Navegar a la página About Llamas
              },
            ),
            ListTile(
              title: const Text('Llama Facts'),
              onTap: () {
                Navigator.pushNamed(context, '/facts');
              },
            ),
            ListTile(
              title: const Text('Contact Us'),
              onTap: () {
                Navigator.pushNamed(context, '/contacts');
                // Navegar a la página de Contacto
              },
            ),
            ListTile(
              title: const Text('Gallery'),
              onTap: () {
                Navigator.pushNamed(context, '/gallery');
              },
            ),
          ],
        ),
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
                      'Welcome to the World of Llamas!',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              buildSectionTitle('Introduction'),
              buildCardContent(
                'Llamas are domesticated South American camelids, widely used as meat and pack animals by Andean cultures since the Pre-Columbian era.',
              ),
              SizedBox(height: 20),
              buildSectionTitle('Characteristics'),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Image.asset('assets/gallery/llama2.jpg', height: 150),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        buildCardContent(
                          'Llamas are very social animals and live with others as a herd. Their wool is very soft and lanolin-free.',
                        ),
                        SizedBox(height: 10),
                        buildCardContent(
                          'They can learn simple tasks after a few repetitions. When correctly reared, they are very friendly and pleasant to be around.',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              buildSectionTitle('Did You Know?'),
              SizedBox(height: 10),
              buildFactCard(
                'Llamas communicate with each other through a series of ear, body and tail postures, as well as through vocalizations. The most common sound is a hum.',
              ),
              SizedBox(height: 20),
              buildSectionTitle('Explore More'),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildCustomButton(
                    context,
                    'Gallery',
                    Icons.photo_album,
                    '/gallery',
                  ),
                  buildCustomButton(
                    context,
                    'Facts',
                    Icons.lightbulb,
                    '/facts',
                  ),
                  buildCustomButton(
                    context,
                    'Contact',
                    Icons.contact_page,
                    '/contacts',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }

  Widget buildCardContent(String content) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          content,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  Widget buildFactCard(String fact) {
    return Card(
      color: Colors.yellow[100],
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: Color.fromRGBO(255, 235, 59, 1)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          fact,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  Widget buildCustomButton(BuildContext context, String text, IconData icon, String route) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      icon: Icon(icon, size: 24),
      label: Text(
        text,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
