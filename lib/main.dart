import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled27/pages/login.dart';
import 'package:untitled27/pages/signup.dart';
import 'package:untitled27/pages/welcome.dart';

void main() async{
  runApp( MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyAEkeuhXd5-gIWXDBG0YV8WNF_LN4aSbZQ",
        authDomain: "contact-app-4f5aa.firebaseapp.com",
        projectId: "contact-app-4f5aa",
        storageBucket: "contact-app-4f5aa.appspot.com",
        messagingSenderId: "833971617103",
        appId: "1:833971617103:web:9a84a0cab68459d57c993a",
        measurementId: "G-TCJQJ5PFN0"
    )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:"/" ,
      routes: {
        "/":(context) => const Welcome(),
        "/login":(context) => const Login(),
        "/signup":(context) => const Signup(),
      },
    );
  }
}
