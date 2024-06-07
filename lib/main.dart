import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_apps/auth/login.dart';
import 'package:my_apps/auth/welcome.dart';
import 'package:my_apps/auth/register.dart';
import 'package:my_apps/home/home.dart';
import 'package:my_apps/profel/profel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'home':(context)=>const Home(),
        'welcome':(context)=>const Welcome(),
        'login':(context)=>const Login(),
        'register':(context)=>const Register(),
        'profel':(context)=>const Profel(),
      },
      home: const Home(),
    );
  }
}
