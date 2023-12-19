//import 'package:around_egybt/views/Mausem.dart';

import 'package:around_egypt/pages/homeView.dart';
import 'package:around_egypt/pages/travelCard.dart';
import 'package:flutter/material.dart';

class CategoryTripsScreen extends StatelessWidget {
  const CategoryTripsScreen({super.key});

  get pageTitle => (MusuemsApp);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 206, 59, 1),
        title: Text(
          'Around Egypt',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background1.jpeg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 50, width: 40), // Adjust the height as needed
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NavBarBox(
                  text: 'Museums',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MusuemsApp(),
                      ),
                    );

                    //Box1Page();
                  },
                ),
                NavBarBox(
                  text: 'Resturants',
                  onTap: () {
                    navigateToresturantApp(context);
                  },
                ),
                NavBarBox(
                  text: 'Hotels',
                  onTap: () {
                    _navigateToTravelApp(context, 'Hotels');
                  },
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }

//////////////////////////////////////////////////////////////////
  void _navigateToMusuemsApp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MusuemsApp(),
      ),
    );
  }

  void _navigateToTravelApp(BuildContext context, String pageTitle) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TravelApp(),
      ),
    );
  }

  void navigateToresturantApp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => resturantApp(),
      ),
    );
  }
}

// // ignore: non_constant_identifier_names
//////////////////////////////////////////////////////
class MusuemsApp extends StatefulWidget {
  @override
  _MusuemsAppState createState() => _MusuemsAppState();
}

class _MusuemsAppState extends State<MusuemsApp> {
  //here i'm going to add a list of image url that I collected from the internet
  //you can use the image that you want, just copy and paste their Urls here inside the list
  List<String> urls = [
    "https://i.pinimg.com/564x/7e/12/f6/7e12f6fd531d275306a1dd639828273c.jpg",
    "https://lh3.googleusercontent.com/proxy/wTkD1USQGpbVXzZFNLCZBDCL1OQS1bFzSgPa44cHwiheaY9DpoqMdNjBgEJcCIZSQeSkCO-2q5gfuhtnuz4cDhtpansOcWos093YsGvogdQqWnpWlA",
    "https://i.pinimg.com/564x/92/7e/8c/927e8c20928a568fb11ec91bdef08236.jpg",
    "https://lh3.googleusercontent.com/proxy/ovCSxeucYYoir_rZdSYq8FfCHPeot49lbYqlk7nXs7sXjqAfbZ2uw_1E9iivLT85LwIZiGSnXuqkdbQ_xKFhd91M7Y05G94d",
    "https://q-xx.bstatic.com/xdata/images/hotel/max500/216968639.jpg?k=a65c7ca7141416ffec244cbc1175bf3bae188d1b4919d5fb294fab5ec8ee2fd2&o=",
    "https://i.pinimg.com/474x/aa/a6/70/aaa670505bc79beecc6ffc0201ab95b0.jpg",
    "https://i.pinimg.com/736x/2f/f3/8b/2ff38b8b4095421713ffac4a9a2326ca.jpg",
    "https://www.shieldsgazette.com/images-i.jpimedia.uk/imagefetch/https://jpgreatcontent.co.uk/wp-content/uploads/2020/04/spain.jpg",
    "https://i.pinimg.com/564x/31/5a/11/315a11eb0013bf8797e68f6fc94e8c30.jpg",
    "https://lp-cms-production.imgix.net/features/2018/06/byrsa-hill-carthage-tunis-tunisia-2d96efe7b9bf.jpg"
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFF6F7FF),
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Let's start by adding the text
            Text(
              "Welcome TO Egyption Musuems",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Pick your destination",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            //Now let's add some elevation to our text field
            //to do this we need to wrap it in a Material widget
            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              shadowColor: Color(0x55434343),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Search for a Musuem",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            //Now let's Add a Tabulation bar
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor:  Color.fromRGBO(225, 172, 13, 1),
                      unselectedLabelColor: Color(0xFF555555),
                      labelColor: Color.fromRGBO(225, 172, 13, 1),
                      labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      tabs: [
                        Tab(
                          text: "Trending",
                        ),
                        Tab(
                          text: "Promotion",
                        ),
                        Tab(
                          text: "Favorites",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 300.0,
                      child: TabBarView(
                        children: [
                          //Now let's create our first tab page
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                //Now let's add and test our first card
                                travelCard(
                                    urls[0], "Egyption Museum", "Cairo-Egypt", 3),
                                travelCard(urls[5], "Grand Egyption Museum", "Cairo-Egypt", 4),
                                travelCard(
                                    urls[2], "Museum OF Islamic Art", "Cairo-Egypt", 5),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                //Here you can add what ever you want
                                travelCard(urls[6], "Salah Eldeen Castel", "Cairo-Egypt", 4),
                                travelCard(urls[8], "Alazhar Mousque",
                                    "Cairo-Egypt", 4),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFFB7B7B7),
        selectedItemColor:  Color.fromRGBO(225, 172, 13, 1),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'BookMark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label:'Destination',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label:'Notification',
          ),
        ],
      ),
    );
    
  }
}
//////////////////////////////////////////////////////
// class Box1Page extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromRGBO(255, 206, 59, 1),
//         title: Text(
//           'Museums Page',
//           style: TextStyle(
//               fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(
//               Icons.home,
//               color: Colors.black,
//             ),
//             onPressed: () {
//               _navigateToHomePage(
//                 context,
//               );
//             },
//           ),
//         ],
//       ),
//       body: Center(
//         child: Container(
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('images/background1.jpeg'),
//               fit: BoxFit.fill,
//             ),
//           ),
//           child: CustomScrollView(
//             slivers: [
//               SliverToBoxAdapter(
//                 child: Align(
//                   alignment: Alignment.topLeft,
//                   child: Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Container(
//                           width: 200,
//                           height: 50,
//                           color: Color.fromRGBO(255, 206, 59, 1),
//                           child: Center(
//                             child: Text(
//                               'The Grand Egyption Museum',
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           width: 200,
//                           height: 150,
//                           child: Image(
//                             image: AssetImage(
//                                 'images/The Grand Egyption Musuem.jpeg'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         OvalContainer(),
//                         Container(
//                           width: 200,
//                           height: 50,
//                           color: Color.fromRGBO(255, 206, 59, 1),
//                           child: Center(
//                             child: Text(
//                               'Museum of Islamic Art',
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           width: 200,
//                           height: 150,
//                           child: Image(
//                             image: AssetImage(
//                                 'images/Museums of Islamic Art.jpeg'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         OvalContainer(),
//                         Container(
//                           width: 200,
//                           height: 50,
//                           color: Color.fromRGBO(255, 206, 59, 1),
//                           child: Center(
//                             child: Text(
//                               'The Coptic Museum',
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           width: 200,
//                           height: 150,
//                           child: Image(
//                             image: AssetImage('images/the coptic museum.jpeg'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         OvalContainer(),
//                         Container(
//                           width: 200,
//                           height: 50,
//                           color: Color.fromRGBO(255, 206, 59, 1),
//                           child: Center(
//                             child: Text(
//                               'National Museums of Egyption Civilization',
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           width: 200,
//                           height: 150,
//                           child: Image(
//                             image: AssetImage(
//                                 'images/national museum of egyption.jpeg'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         OvalContainer(),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

void _navigateToHomePage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const HomeView(HomeView),
    ),
  );
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
              'Book a ticket',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
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

// ignore: non_constant_identifier_names
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
    // TODO: implement build
    throw UnimplementedError();
  }
}
  get urls => null;



class TravelApp extends StatefulWidget {
  @override
  _TravelAppState createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  //here i'm going to add a list of image url that I collected from the internet
  //you can use the image that you want, just copy and paste their Urls here inside the list
  List<String> urls = [
    "https://th.bing.com/th/id/R.ffab2591c895d6fca45570aeecfcd41f?rik=nZlB%2bN7jHkuL9Q&pid=ImgRaw&r=0",//py
    "https://th.bing.com/th/id/R.830e7c8fad822b7803e6186e32faa40f?rik=Pev7UZdGQLCVqg&pid=ImgRaw&r=0",
   "https://th.bing.com/th/id/R.8fa3a103f73c0337097f41ebfbb90817?rik=AErrZ%2fCnbfd3pw&pid=ImgRaw&r=0",//fair
    "https://th.bing.com/th/id/R.830e7c8fad822b7803e6186e32faa40f?rik=Pev7UZdGQLCVqg&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.830e7c8fad822b7803e6186e32faa40f?rik=Pev7UZdGQLCVqg&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.830e7c8fad822b7803e6186e32faa40f?rik=Pev7UZdGQLCVqg&pid=ImgRaw&r=0",//sh

    "https://th.bing.com/th/id/R.ad1191d6950d61c11eead46f817a94b0?rik=ta%2bpUfBMuLd1yA&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.5979155ba73b1df61abeeebaaf838673?rik=M0QBhiFOJVjtaA&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.5979155ba73b1df61abeeebaaf838673?rik=M0QBhiFOJVjtaA&pid=ImgRaw&r=0",//khan
    "https://th.bing.com/th/id/R.830e7c8fad822b7803e6186e32faa40f?rik=Pev7UZdGQLCVqg&pid=ImgRaw&r=0"
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFF6F7FF),
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Let's start by adding the text
            Text(
              "Welcome TO Egyption Hotels",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Pick your destination",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            //Now let's add some elevation to our text field
            //to do this we need to wrap it in a Material widget
            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              shadowColor: Color(0x55434343),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Search for Hotel",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            //Now let's Add a Tabulation bar
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: Color.fromRGBO(225, 172, 13, 1),
                      unselectedLabelColor: Color(0xFF555555),
                      labelColor: Color.fromRGBO(225, 172, 13, 1),
                      labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      tabs: [
                        Tab(
                          text: "Trending",
                        ),
                        Tab(
                          text: "Promotion",
                        ),
                        Tab(
                          text: "Favorites",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 300.0,
                      child: TabBarView(
                        children: [
                          //Now let's create our first tab page
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                //Now let's add and test our first card
                                travelCard(urls[0], "Pyramids Hotel", "Cairo-Egypt", 3),
                                travelCard(urls[5], "Fermont Hotel", "Cairo-Egypt", 4),
                                travelCard(urls[2], "Shertaton Hotel", "Cairo-Egypt", 5),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                //Here you can add what ever you want
                                travelCard(urls[6], " Visit Elmuaiz Street", "Cairo-Egypt", 4),
                                travelCard(urls[8], "Visit Kahn Elkalily","Cairo-Egypt", 4),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFFB7B7B7),
        selectedItemColor:  Color.fromRGBO(225, 172, 13, 1),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'BookMark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label:'Destination',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label:'Notification',
          ),
        ],
      ),
    );
    
  }
}
///////////////////////////////////////////////////
class resturantApp extends StatefulWidget {
  @override
  _resturantAppState createState() => _resturantAppState();
}

class _resturantAppState extends State<resturantApp> {
  //here i'm going to add a list of image url that I collected from the internet
  //you can use the image that you want, just copy and paste their Urls here inside the list
  List<String> urls = [
    "https://th.bing.com/th/id/R.a1eb67370b1c79e410a37ebf433dbb31?rik=VAMxtmOWykF5ZQ&pid=ImgRaw&r=0",
    "https://lh3.googleusercontent.com/proxy/wTkD1USQGpbVXzZFNLCZBDCL1OQS1bFzSgPa44cHwiheaY9DpoqMdNjBgEJcCIZSQeSkCO-2q5gfuhtnuz4cDhtpansOcWos093YsGvogdQqWnpWlA",
    "https://th.bing.com/th/id/R.8914970f2db3d82e2f12dee8e6759fea?rik=jOzMsDOrwxLb5w&pid=ImgRaw&r=0",
    "https://lh3.googleusercontent.com/proxy/ovCSxeucYYoir_rZdSYq8FfCHPeot49lbYqlk7nXs7sXjqAfbZ2uw_1E9iivLT85LwIZiGSnXuqkdbQ_xKFhd91M7Y05G94d",
    "https://q-xx.bstatic.com/xdata/images/hotel/max500/216968639.jpg?k=a65c7ca7141416ffec244cbc1175bf3bae188d1b4919d5fb294fab5ec8ee2fd2&o=",
    "https://media-cdn.tripadvisor.com/media/photo-s/13/29/47/30/photo4jpg.jpg",
    "https://th.bing.com/th/id/OIP.-dMOmV84aAliYhQV6yD2mwAAAA?w=370&h=376&rs=1&pid=ImgDetMain",

    "https://th.bing.com/th/id/R.61aaec585da9c0f46ea371d41186eebc?rik=EvvT6wKJCscsOg&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.61aaec585da9c0f46ea371d41186eebc?rik=EvvT6wKJCscsOg&pid=ImgRaw&r=0",
    "https://lp-cms-production.imgix.net/features/2018/06/byrsa-hill-carthage-tunis-tunisia-2d96efe7b9bf.jpg"
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFF6F7FF),
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Let's start by adding the text
            Text(
              "Welcome TO Egyptian Resturants",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Pick Your Favorite Resturant",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            //Now let's add some elevation to our text field
            //to do this we need to wrap it in a Material widget
            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              shadowColor: Color(0x55434343),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Search for a Resturant",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            //Now let's Add a Tabulation bar
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: Color.fromRGBO(225, 172, 13, 1),
                      unselectedLabelColor: Color(0xFF555555),
                      labelColor: Color.fromRGBO(225, 172, 13, 1),
                      labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      tabs: [
                        Tab(
                          text: "Trending",
                        ),
                        Tab(
                          text: "Promotion",
                        ),
                        Tab(
                          text: "Favorites",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 300.0,
                      child: TabBarView(
                        children: [
                          //Now let's create our first tab page
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                //Now let's add and test our first card
                                travelCard(
                                    urls[0], "Scores Sports Bar & Resturant", "Cairo-Egypt", 3),
                                travelCard(urls[5], "Opia Cairo", "Cairo-Egypt", 4),
                                travelCard(
                                    urls[2], "Osteria Resturant", "Cairo-Egypt", 5),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                //Here you can add what ever you want
                                travelCard(urls[6], "Egyptian Breakfast Food ", "Egyptian Streets", 4),
                                travelCard(urls[8], "Egyptian Koshari","Egyptian Street", 4 ),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFFB7B7B7),
        selectedItemColor: Color.fromRGBO(225, 172, 13, 1),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'BookMark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label:'Destination',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label:'Notification',
          ),
        ],
      ),
    );
    
  }
}



////////////////////////////////////////////
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
