import 'package:flutter/material.dart';
import 'package:qchat/screens/welcome_screen.dart';
import 'package:qchat/screens/login_screen.dart';
import 'package:qchat/screens/registration_screen.dart';
import 'package:qchat/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes:{
        WelcomeScreen.id:(context) => WelcomeScreen(),
        '/chat':(context) => ChatScreen(),
        '/login':(context) => LoginScreen(),
        '/register':(context) => RegistrationScreen(),
      },
    );
  }
}
