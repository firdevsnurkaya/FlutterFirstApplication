import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String openButtonText = '';
  String closeButtonText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Color.fromARGB(255, 64, 191, 255),
        title: Text('UI APP WITH FLUTTER'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 17, 170, 247),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 64, 191, 255),
              ),
              child: Text(
                'DRAWER',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Ana Sayfa'),
              iconColor: Colors.white,
              textColor: Colors.white,
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.pageview),
              title: Text('Page 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'WELCOME TO MY APP ',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'WİDGET-1',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 16),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 64, 191, 255),
                          ),
                        ),
                        SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              openButtonText = 'You pressed the open button';
                              closeButtonText = '';
                            });
                          },
                          child: Text('Open Text Button'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 17, 170, 247),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          openButtonText,
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'WİDGET- 2',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 16),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 64, 191, 255),
                          ),
                        ),
                        SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              closeButtonText = 'You pressed the close button';
                              openButtonText = '';
                            });
                          },
                          child: Text('Close Text Button'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 17, 170, 247),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          closeButtonText,
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50), // 5 cm aşağısı
          Text(
            'AÇIKLAMA:',
            style: TextStyle(
              color: Color.fromARGB(255, 2, 20, 174),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Bu benim ilk mobil uygulama ödevimdir.',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
            SizedBox(height: 8),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'FIRDEVS NUR KAYA',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Dialog Title'),
                content: Text('This Is A Dialog Box'),
                backgroundColor: Colors.blue,
              );
            },
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 64, 191, 255),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
