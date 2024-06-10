import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:my_apps/home/rgb.dart';
class Resset extends StatefulWidget {
  const Resset({super.key});

  @override
  State<Resset> createState() => _LoginState();
}

class _LoginState extends State<Resset> {
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
                Get.toNamed('login');
              },
              style: TextButton.styleFrom(
                foregroundColor: RGB.greyColor,
              ),
              icon: Icon(Icons.keyboard_arrow_left, color: RGB.greyColor),
              label: Text("Orqaga"),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text(
                  "Tasdiqlash kodi yuborildi",
                  style: TextStyle(
                    color: RGB.bleakColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
            ),
            Container(
              alignment: Alignment.center,
              width: Get.width*0.8,
              margin: EdgeInsets.only(left: Get.width*0.1),
              child: Text(
                  "Tasdiqlash kodini kiriting.",
                  style: TextStyle(
                    color: RGB.greyColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: Get.width*0.05,right: Get.width*0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...[0,1,2,3,4].map((e){
                    return Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: RGB.warningColor)
                        ),
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "0",
                            hintStyle: TextStyle(
                              color: RGB.bleakColor,
                            ),
                          ),
                          
                        )
                    );
                  }),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed('resset');
                },
                child: Text(
                  "Tasdiqlash",
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
