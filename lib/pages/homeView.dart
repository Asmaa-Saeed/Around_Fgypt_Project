
import 'package:around_egypt/widgets/app_drawar.dart';
import 'package:around_egypt/widgets/listCatergoryCard.dart';
//import 'package:around_egybt/widget/CategoryCard.dart';
import 'package:flutter/material.dart';



class HomeView extends StatelessWidget {
    static String id = 'HomeView';
  const HomeView(Type homeView, {super.key});

  get appBar => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 206, 59, 1),
        title: Text(
          "AroundEgypt",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      drawer: appDrwaer(),
      body: SizedBox(
        //child:const SafeArea(child: child)
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/background1.jpeg'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              //text
              Column(
                children: [
                  Text(
                    "Hi ",

                    //  textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 251, 251, 251),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3),
              Text(
                "Where do you",
                style: TextStyle(
                  color: const Color.fromARGB(255, 251, 251, 251),
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.2,
                ),
              ),
              SizedBox(height: 1),
              Text(
                "want to go?",
                style: TextStyle(
                  color: const Color.fromARGB(255, 251, 251, 251),
                  fontSize: 25,
                  letterSpacing: 1.2,
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Expanded(
                child: listCategorycards(),
              )
            ],
          ),
        ),
      ),
    );
  }
}







