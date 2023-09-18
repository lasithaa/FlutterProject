import 'package:flutter/material.dart';
import 'package:nsbm_recreational_center/pages/HomePage.dart';
import 'package:nsbm_recreational_center/pages/create_account.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/nsbm1bg.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black54,
                BlendMode.darken,
            )
          )
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(
                      builder: (context)=>CreateAccount()),
                  );
                },
                child: Container(
                  width: 200.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                    borderRadius: BorderRadius.circular(25.0)
                  ),
                  child: Center(child: Text("Login",style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,

                  ),)),
                ),
              ),

              SizedBox(height: 30.0,),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> HomePage(),
                  )
                  );
                },
                child: Container(
                  width: 200.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(25.0)
                  ),
                  child: Center(child: Text("Signin",style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,

                  ),)),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
