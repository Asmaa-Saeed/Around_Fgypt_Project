import 'package:around_egypt/firebase_options.dart';
import 'package:around_egypt/pages/homeView.dart';
import 'package:around_egypt/pages/login.dart';
import 'package:around_egypt/pages/register.dart';
//import 'package:around_egypt/pages/travelCard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(AroundEgypt());
}

class AroundEgypt extends StatelessWidget {
  const AroundEgypt({Key? key});




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(HomeView),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // RenderSemanticsGestureHandler();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: const Text('Welcome to HomeView!'),
      ),
    );
  }
}

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginPage.id: (context) => LoginPage(),
        RegisterPage().id: (context) => RegisterPage(),
        HomeView.id: (context) => const HomeView(HomeView),
      },
      initialRoute: LoginPage.id,
    );
  }



 









