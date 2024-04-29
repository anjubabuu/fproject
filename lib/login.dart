import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fproject/profile.dart';
import 'package:fproject/registration.dart';

class Login extends StatelessWidget {
  Login ({super.key});

  final emailController = TextEditingController();
  final pswrdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            "Log In",
            style: TextStyle(
              color: Colors.pink,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              height: 100,
            ),
    ),
            SizedBox(
              width: 400,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  prefixIcon: Icon(Icons.person),
                  hintText: AutofillHints.username,
                ),
              ),
              ),

          SizedBox(
            height: 25,
          ),
          SizedBox(
            width: 400,
            child: TextField(
              controller: pswrdController,
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
          TextButton(
            onPressed: () async{
              try{
            var user =   await  FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, password: pswrdController.text,);
                print(user);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile(),));

              }
    on FirebaseAuthException
    catch(e){

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.code)));
    }


              },
            style: TextButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              "View Details",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
    TextButton(
            onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Registration(),));
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),

    ),
            child: Text(
              "Back",
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
