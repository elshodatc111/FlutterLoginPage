import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_apps/home/rgb.dart';
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _LoginState();
}

class _LoginState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      width: double.infinity,
      color: RGB.whiteColor,
      padding: EdgeInsets.only(top: Get.height * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton.icon(
            onPressed: () {
              Get.toNamed('home');
            },
            style: TextButton.styleFrom(
              foregroundColor: RGB.greyColor,
            ),
            icon: Icon(Icons.keyboard_arrow_left, color: RGB.greyColor),
            label: Text("Orqaga"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 25,bottom: 25),
            child: Text(
              "Ro'yhatdan o'tish",
              style: TextStyle(
                color: RGB.bleakColor,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Center(
            child: Container(
                width: Get.width -40,
                height: 65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: RGB.warningColor)
                ),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Ismingiz"
                  ),
                )
            ),
          ),
          SizedBox(height: 25,),
          Center(
            child: Container(
                width: Get.width -40,
                height: 65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: RGB.warningColor)
                ),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Telefon raqam"
                  ),
                )
            ),
          ),
          SizedBox(height: 25,),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed('resset');
              },
              child: Text(
                "Ro'yhatdan o'tish",
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
          ),
        ],
      ),
    ),
    );
  }
}
