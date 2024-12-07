import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:practice/image.dart';
import 'package:practice/string.dart';

class AboutePage extends StatelessWidget {
  const AboutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.arrow_left),
              Expanded(
                child: Text(
                  "About Us",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(ImagePath.splash),
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(
                  AppString.about1,
                  style: const TextStyle(fontSize: 17),
                ),
                const SizedBox(height: 20),
                Text(
                  AppString.about2,
                  style: const TextStyle(fontSize: 17),
                ),
                const SizedBox(height: 20),
                Text(
                  AppString.about3,
                  style: const TextStyle(fontSize: 17),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: AppString.about4,
                        style: const TextStyle(fontSize: 17, color: Colors.black),
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()..onTap = (){},
                            text: AppString.about5,
                            style: const TextStyle(decoration: TextDecoration.underline,fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
