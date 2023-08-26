import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

 
  final _formkey = GlobalKey<FormState>();

  TextEditingController UserController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController PassController = TextEditingController();

  var _username = '';
  var _email = '';
  var _password = '';

  bool IsLogin = false;

  startauthentication () {
    final validte  = _formkey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if(validte){
      _formkey.currentState!.save();
      submitform(_username,_email,_password);
    }
  }

  submitform (String username, String email, String password ) async {

    final auth = FirebaseAuth.instance;
    UserCredential authResult;
    if(IsLogin){
      authResult = await auth.signInWithEmailAndPassword(email: email, password: password);
    }
    else {
      authResult = await auth.createUserWithEmailAndPassword(email: email, password: password);
      String UserId = authResult.user!.uid;
      await FirebaseFirestore.instance.collection('users').doc(UserId).set({
        'username': username,
        'email':email
      });
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFEFAF0),
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(color: Color(0xfffbf0)),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 175,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/anime_login.jpg'),
                      ),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(color: Color(0xfffbf0)),
                    child: Form(
                      key: _formkey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          if (!IsLogin)
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                key: const ValueKey('username'),
                                controller: UserController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  hintText: "Enter Username",
                                ),
                                onSaved: (newValue) {
                                  _username = newValue!;
                                },
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              key: const ValueKey('email'),
                              keyboardType: TextInputType.emailAddress,
                              controller: EmailController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: "Enter Email",
                              ),
                              onSaved: (newValue) {
                                _email = newValue!;
                              },
                              validator: (value) {
                                if (value == null || !value.contains('@')) {
                                  return 'Incorrect Email';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              key: const ValueKey('password'),
                              controller: PassController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: "Enter Password",
                              ),
                              validator: (value) {
                                if (value == null) {
                                  return 'Password Cannot be empty';
                                } else if (value.length < 8) {
                                  return 'Password lenght must of at least 8 characters';
                                }
                                return null;
                              },
                              onSaved: (newValue) {
                                _password = newValue!;
                              },
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                startauthentication();
                              },
                              child: IsLogin
                                  ? const Text("Login")
                                  : const Text('SignUp')),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  IsLogin = !IsLogin;
                                });
                              },
                              child: !IsLogin
                                  ? const Text(
                                      'Already a member ? Click here to Login')
                                  : const Text(
                                      'Not a member ? Click here to Sign In')),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
