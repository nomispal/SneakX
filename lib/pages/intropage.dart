import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(90.0),
                child: Image.asset(
                    "lib/images/logoo.png",
                  height: 100,
                ),
              ),
              SizedBox(height: 40,),
              //title
              Text(
                "Just do it",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold
                ),
              ),

              SizedBox(height: 20),
              //sub title
              Text(
                "SneakX delivers innovative products, experinces and services to inspire athletes",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 28),
              //star now button
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                borderRadius: BorderRadius.circular(25)
                ),
                child:
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 130.0,vertical: 30),
                    child: Text(
                      "Shop now",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
              ),

            ],

          ),
        ),
      ),
    );
  }
}
