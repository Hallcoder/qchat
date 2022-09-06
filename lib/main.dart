import 'package:flutter/material.dart';
import 'package:qchat/screens/welcome_screen.dart';
import 'package:qchat/screens/login_screen.dart';
import 'package:qchat/screens/registration_screen.dart';
import 'package:qchat/screens/chat_screen.dart';

void main() => runApp(const FlashChat());

class FlashChat extends StatelessWidget {
  const FlashChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ChatScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
      },
    );
  }
}
