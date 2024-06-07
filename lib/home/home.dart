import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(child: Image.asset('assets/images/001.png'),              ),
              SizedBox(height: 28),
              Text("Welcome",style: TextStyle(
                color: Color(0xff2A2A2A),
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),),
              SizedBox(height: 16),
              Text('Have a better sharing experience',style: TextStyle(
                color: Color(0xffA6A6A6),
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('login');
                },
                child: Text(
                  'Kirish',
                  style: TextStyle(color: Color(0xffffffff)),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(Get.width * 0.9, 50),
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  elevation: 2,
                  backgroundColor: Color(0xFFFEC400),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              SizedBox(height: 28),
              ElevatedButton(
                onPressed: () {Get.toNamed('register');},
                child: Text(
                  'Ro\'yhatdan o\'tish',
                  style: TextStyle(color: Color(0xFFFEC400)),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(Get.width * 0.9, 50),
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  elevation: 2,
                  backgroundColor: Color(0xFFffffff),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  side: BorderSide(color: Color(0xFFFEC400),width: 1),
                ),
              ),
              SizedBox(height: 28),
            ],
          ),
        ),
      ),
    );
  }
}
