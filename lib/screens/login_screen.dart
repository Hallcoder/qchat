import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:qchat/components/CustomButton.dart';
import 'package:qchat/constants.dart';
import 'chat_screen.dart';
class LoginScreen extends StatefulWidget {
  static String id = '/login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String email;
  late String password;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag:'logo',
              child: SizedBox(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
           const SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {
                email = value;
                //Do something with the user input.
              },
              decoration:kInputDecoration.copyWith(
                hintText: 'Enter your email'
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {
                password = value;
                //Do something with the user input.
              },
              decoration: kInputDecoration.copyWith(
                hintText: 'Enter your password'
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            CustomButton(routeFunction: ()async{
              try{
              UserCredential newUser = await  _auth.signInWithEmailAndPassword(email: email, password: password);
              if(newUser != null){
                Navigator.pushNamed(context,ChatScreen.id);
              }
              }catch(e){
                print(e);
              }

            }, buttonColor: kLoginButtonColor, text: 'Log In')
            ,
          ],
        ),
      ),
    );
  }
}
