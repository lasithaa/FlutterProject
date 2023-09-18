import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/nsbm1bg.jpg"),
            fit: BoxFit.cover ,
            colorFilter: ColorFilter.mode(
                Colors.black54,
                BlendMode.darken,
            )
          ),

        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 250.0),
              child: Image(image: AssetImage("Images/nsbmlogo.png",),
                width: 250.0,
                height: 250.0,
              ),
            ),

            SizedBox(height: 20.0,),

            Text("NSBM RECREATIONAL CENTER",style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),







        // child: Center(
        //   child: Text("Hello",style: TextStyle(
        //     fontSize: 25.0,
        //   ),),
        // ),

      ),
    );
  }
}
