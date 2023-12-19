
import 'package:around_egypt/pages/homeView.dart';
import 'package:flutter/material.dart';

class Box1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 206, 59, 1),
        title: Text('Museums Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              _navigateToHomePage(
                context,
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background1.jpeg'),
              fit: BoxFit.fill,
            ),
          ),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 200,
                          height: 50,
                          color: Color.fromRGBO(255, 206, 59, 1),
                          child: Center(
                            child: Text(
                              'The Grand Egyption Museum',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 150,
                          child: Image(
                            image: AssetImage('images/IMG-20231208-WA0042.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        OvalContainer(),
                        Container(
                          width: 200,
                          height: 50,
                          color: Color.fromRGBO(255, 206, 59, 1),
                          child: Center(
                            child: Text(
                              'Museum of Islamic Art',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 150,
                          child: Image(
                            image: AssetImage('images/IMG-20231208-WA0045.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        OvalContainer(),
                        Container(
                          width: 200,
                          height: 50,
                          color: Color.fromRGBO(255, 206, 59, 1),
                          child: Center(
                            child: Text(
                              'The Coptic Museum',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 150,
                          child: Image(
                            image:
                                AssetImage('images/IMG-20231208-WA0044(1).jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        OvalContainer(),
                        Container(
                          width: 200,
                          height: 50,
                          color: Color.fromRGBO(255, 206, 59, 1),
                          child: Center(
                            child: Text(
                              'National Museums of Egyption Civilization',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 150,
                          child: Image(
                            image: AssetImage('images/IMG-20231208-WA0046.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        OvalContainer(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToHomePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeView(HomeView),
      ),
    );
  }
}

class OvalContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(50),
        color: Color.fromRGBO(255, 206, 59, 1),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '\$ 15',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.add,
              color: Colors.black,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class OvalElement extends StatelessWidget {
  final String text;
  final BuildContext context;

  OvalElement(this.text, this.context);

  void _showMessageBox() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Box Content'),
          content: Text('This is the content of the box.'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _showMessageBox,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.yellow,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.add,
                color: Colors.black,
              ),
              Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavBarBox extends StatelessWidget {
  final String text;
  final Function onTap;

  NavBarBox({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: 100,
        height: 50,
        color: Color.fromRGBO(255, 206, 59, 1),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  final String title;

  NewPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          color: Color.fromRGBO(255, 206, 59, 1),
          child: Center(
            child: Text(
              'This is the content of $title',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyHomePagei extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the home page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: Text('Go to Home Page'),
        ),
      ),
    );
  }

  HomePage() {}
}
