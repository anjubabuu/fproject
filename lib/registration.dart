import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login.dart';
final userController = TextEditingController();
final emailController = TextEditingController();
final genController = TextEditingController();
final passController = TextEditingController();
final conController = TextEditingController();
class Registration extends StatelessWidget {
  Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Registration",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
         child:SizedBox(
          height: 100,
      ),
    ),
         SizedBox(
            width: 400,
            child: TextField(
              controller: userController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                prefixIcon: Icon(Icons.person),
                hintText: AutofillHints.username,
              ),
            ), ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            width: 400,
            child: TextField(
              controller: genController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                  prefixIcon: Icon(Icons.male_rounded,),
                  labelText: "male/female",
              ),
            ), ),
          SizedBox(
            height: 25,
          ),
           SizedBox(
            width: 400,
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)),
                 prefixIcon: Icon(Icons.mail),
                 hintText: AutofillHints.email,
              ),
            ),
          ),
          SizedBox(
              height: 25,
          ),
          SizedBox(
            width: 400,
            child: TextField(
              controller: passController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)),
                prefixIcon: Icon(Icons.password),
                hintText: AutofillHints.password,
                ),
              ),
            ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            width: 400,
            child: TextField(
              controller: conController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                prefixIcon: Icon(Icons.password),
                labelText: "confirm password",
              ),
            ),
          ),
          SizedBox(
          height: 25,
          ),
          TextButton(
            onPressed: () async{
              print("hi");
              try{

             await   FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text, password: passController.text);


               Navigator.push(
                   context, MaterialPageRoute(builder: (context) => Login(),));
              }on FirebaseAuthException
                   catch(e){

                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.code)));
              }
            },
          style: TextButton.styleFrom(
            backgroundColor: Colors.purple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
          ),
    ],
          ),

      );
  }
}

