import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    String email='', password='',name='';
    return Container(

      child: Scaffold(

        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35.0 , top: 180),
              child: Text('Welcome to sign up ',style: TextStyle(
                color:  Colors.black,
                fontSize: 33.0,
              ),),

            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 260, 20, 100),
                child: Column(
                  children: [
                    TextField(
                      controller: emailController,
                      cursorColor: Colors.orange,
                      decoration: const InputDecoration(
                          border: InputBorder.none, hintText: 'Email'),
                    ),
                    SizedBox(height: 20.0,),
                    TextField(
                      controller: passwordController,
                      cursorColor: Colors.orange,
                      decoration: const InputDecoration(
                          border: InputBorder.none, hintText: 'Password'),
                    ),
                    SizedBox(height: 50.0,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        TextButton(onPressed : () {
                          Navigator.pushNamed(context, 'login');
                        },
                            child: Text('login?',style: TextStyle(

                              fontSize: 22.0,

                              fontWeight: FontWeight.w300,
                            ),)),
                        TextButton(onPressed : () async {
                          await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);

                          //Navigator.pushNamed(context, 'home');
                        }, child: Text('Sign Up',style: TextStyle(

                          fontSize: 22.0,

                          fontWeight: FontWeight.w300,
                        ),)),

                      ],

                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
