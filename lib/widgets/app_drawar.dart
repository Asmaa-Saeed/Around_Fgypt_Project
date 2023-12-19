import 'package:flutter/material.dart';

class appDrwaer extends StatelessWidget {
  const appDrwaer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: Column(
        children: [
          Container(
            
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            color: const Color.fromRGBO(255, 206, 59, 1),
            child: const Text(
              'Around Eygpt',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildlistTiel('Home', Icons.card_travel_rounded, () {}),
          buildlistTiel('Picnics', Icons.card_travel, () {}),
          buildlistTiel('Log out', Icons.card_travel, () {}),
        ],
      ),
    );
  }

  ListTile buildlistTiel(String titel, IconData icon, VoidCallback onTapLink) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: Color.fromRGBO(255, 206, 59, 1),
      ),
      title: Text(
        titel,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      onTap: onTapLink,
    );
  }
}
