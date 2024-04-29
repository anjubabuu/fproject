import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: Text(
          "PROFILE",
          style: TextStyle(
            color: Colors.yellowAccent,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child:SizedBox(
              width: 50,
            ),
    ),
            CircleAvatar(
              radius: 80.0,
              backgroundImage: NetworkImage(
                  "https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o="),
            ),
          Text(
            "Sarang Sukumar",
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),

          Text("Email:sarangsukumar@gmail.com",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.0,
          ),
          ),
          Text("Gender:Male",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.0,
          ),),
          Text("+975687990",style: TextStyle(
            color: Colors.black,
            fontSize: 14.0,
          ),),
    ],
    ),
    );
  }
}
