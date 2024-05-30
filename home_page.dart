
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('World of Llamas'),
        backgroundColor:Color.fromRGBO(255, 235, 59, 1),
        toolbarHeight: 100,
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
                // Navigate to contact page
              },
            ),
            ListTile(
              title: const Text('Gallery'),
              onTap: () {
                Navigator.pushNamed(context, '/gallery'); // Navegar a la galería
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
              Text(
                'Introduction',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Llamas are domesticated South American camelids, widely used as meat and pack animals by Andean cultures since the Pre-Columbian era.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                'Characteristics',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
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
                        Text(
                          'Llamas are very social animals and live with others as a herd. Their wool is very soft and lanolin-free.',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'They can learn simple tasks after a few repetitions. When correctly reared, they are very friendly and pleasant to be around.',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Did You Know?',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.yellow[100],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color:Color.fromRGBO(255, 235, 59, 1)),
                ),
                child: Text(
                  'Llamas communicate with each other through a series of ear, body and tail postures, as well as through vocalizations. The most common sound is a hum.',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Explore More',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/gallery');
                    },
                    child: Text('Gallery'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                        Navigator.pushNamed(context, '/facts');
                    },
                    child: Text('Facts'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                    
                    },
                    child: Text('Contact'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


