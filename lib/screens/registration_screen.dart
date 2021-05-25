import 'package:flutter/material.dart';
import 'package:the_chatty/widgets/w.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'chat_screen.dart ';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  bool spinner = false;

  @override
  Widget build(BuildContext context) {
   String  email1;
    String password1;
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: ModalProgressHUD(
        inAsyncCall: spinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          // child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Flexible(
                  child: Hero(
                    tag: 'logo',
                    child: Container(
                      height: 200.0,
                      child: Image.asset('images/logo.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 48.0,
                ),

                box(
                    back: Colors.white,
                    hint: Colors.black,
                    hinttext: 'Enter your Email...',
                    co: Colors.orange,
y:false,
                    onChanged1: (value) async {
                    //   setState(() {
                    //   email1 =value;
                    //
                    // }

                      // );


                      // style: TextStyle(color: Colors.white);
             email1=await value;

                    }


                ),

                SizedBox(
                  height: 20.0,
                ),
                box(
                    back: Colors.white,
                    hint: Colors.black,
                    hinttext: 'Enter your password...',
                    co: Colors.orange,y:true,
                    onChanged1: (value)async  {
                      // setState(() {
                        password1 = await value;
                      // }
                      //
                      // );



                    }


                    ),


                SizedBox(
                  height: 24.0,
                ),
                button1(
                    title: 'Register',
                    c: Colors.white,

                    onPressed: () async {

                      setState(() {

                        spinner = true;
                      }
                      );
                      try {
                        final newUser = await _auth.createUserWithEmailAndPassword(
                            email: email1, password: password1);

                        if (newUser != null) {
                          Navigator.pushNamed(context, ChatScreen.id);
                        }
                        setState(() {
                          spinner = false;
                        });
                      } catch (e) {
                        print(e);
                      }
                    }
                    )
              ],
            ),
          ),
        ),
      // ),
    );
  }
}
