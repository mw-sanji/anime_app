
import 'package:animelist/Auth/AuthenticationScreen.dart';
import 'package:animelist/Store/MyStore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import 'Home.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(StreamBuilder(
    stream: FirebaseAuth.instance.authStateChanges(),
    builder: (context, snapshot) {
     if(snapshot.connectionState == ConnectionState.waiting){
      return const MaterialApp(
        home: Center(child: CircularProgressIndicator()),
      );
     }
     else if (snapshot.connectionState == ConnectionState.active){
      if(snapshot.hasData){
        return  MaterialApp(
          theme: ThemeData.light().copyWith(
            textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme
            )
          ),
          home: VxState(store:MyStore() , child: const MyApp()));
      }
      else{
        return const MaterialApp(home: AuthScreen());
      }
     }
     else {
      return const MaterialApp(home: 
      Center(child: Text('Error Occured')));
     }
   },));
}


