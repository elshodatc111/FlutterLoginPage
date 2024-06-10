import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_apps/home/rgb.dart';

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
              SizedBox(height: Get.height*0.01),
              Text("Welcome",style: TextStyle(
                color: RGB.bleakColor,
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),),
              SizedBox(height: Get.height*0.01),
              Text('Have a better sharing experience',style: TextStyle(
                color: RGB.greyColor,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),),
              SizedBox(height: Get.height*0.05),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('login');
                },
                child: Text(
                  'Kirish',
                  style: TextStyle(color: RGB.whiteColor),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(Get.width * 0.9, Get.height*0.07),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  elevation: 2,
                  backgroundColor: RGB.warningColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              SizedBox(height: Get.height*0.03),
              ElevatedButton(
                onPressed: () {Get.toNamed('register');},
                child: Text(
                  'Ro\'yhatdan o\'tish',
                  style: TextStyle(color: RGB.warningColor),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(Get.width * 0.9,Get.height*0.07),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  elevation: 2,
                  backgroundColor: RGB.whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: BorderSide(color: RGB.warningColor),
                  ),
                  side: BorderSide(color: RGB.warningColor,width: 2),
                ),
              ),
              SizedBox(height: Get.height*0.05),
            ],
          ),
        ),
      ),
    );
  }
}
