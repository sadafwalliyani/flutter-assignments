
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:login_screen/Pages/Tabbar.dart';

class Login extends StatefulWidget {
  

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailcon = TextEditingController();
  TextEditingController passwordcon = TextEditingController();

signIntoApp() async {
    try {
    final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
        email: emailcon.text,
        password: passwordcon.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('no user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('wrong password provided for that user');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return 
 Scaffold(
    //  resizeToAvoidBottomInset: false,
      
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: Color(0xff006637),
            title: Center(
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "LoginScreen",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color(0xffffffff),
                      Color(0xff006637),
                      Color(0xff000000),
                    ]),
              ),
            ),
          ),
        ),
        body:
         Center(          
          child: Expanded(
            child: SingleChildScrollView(
               physics: AlwaysScrollableScrollPhysics(),
              child: Column(                
                children: 
                  [Container(
                    height: MediaQuery.of(context).size.height * 1,
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 128, 190, 241),
                        Colors.white,
                        Color(0xff006637),
                      ],
                    )),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 150,
                        ),
                        Container(
                            height: 250,
                            width: 250,
                            child: Image(
                              image: AssetImage('assests/jp.png'),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          child: TextField(
                            controller: emailcon,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                filled: true,
                                hintStyle: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 18,
                                  //fontWeight: FontWeight.w700,
                                  wordSpacing: 0.3,
                                ),
                                hintText: 'Enter Your E-mail',
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Color(0xff006637),
                                ),
                                fillColor: Colors.white70),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          child: TextField(
                            controller: passwordcon,
                            obscureText: true,
                            /* ... */
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                filled: true,
                                hintStyle: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 18,
                                  //fontWeight: FontWeight.w700,
                                  wordSpacing: 0.3,
                                ),
                                hintText: 'Password',
                                prefixIcon: Icon(
                                  Icons.password,
                                  color: Color(0xff006637),
                                ),
                                fillColor: Colors.white70),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RaisedButton(
                          onPressed: ()async {
signIntoApp();
           Navigator.pushReplacement<void,void>(context,
                        MaterialPageRoute<void>(builder: (context) => TabBarrr()));

                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Color(0xff006637), Color(0xff000000)],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Container(
                              constraints:
                                  BoxConstraints(maxWidth: 200, minHeight: 50.0),
                              alignment: Alignment.center,
                              child: Text(
                                "Login",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

