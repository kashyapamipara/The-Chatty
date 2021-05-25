import 'package:the_chatty/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:the_chatty/screens/chat_screen.dart';
import 'package:the_chatty/screens/login_screen.dart';
import 'package:the_chatty/screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

   await Firebase.initializeApp();
   runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:WelcomeScreen.id,
      routes:{
        WelcomeScreen.id:(context)=>WelcomeScreen(),
        LoginScreen.id:(context)=>LoginScreen(),

        RegistrationScreen.id :(context)=>RegistrationScreen(),
        ChatScreen.id:(context)=>ChatScreen(),



      },





    );
  }
}
