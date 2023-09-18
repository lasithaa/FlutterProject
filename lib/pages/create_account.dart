import 'package:flutter/material.dart';

import 'HomePage.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: Icon(Icons.arrow_back),
            backgroundColor: Colors.transparent,
            elevation: 0.1,
        ),
      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/nsbm1bg.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black54,
                BlendMode.darken
            )
          )
        ),

        child: Column(
          children: [
            SizedBox(height: 30.0,),
            Text("Create New Account",style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            ),
           SizedBox(height: 40.0,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25.0),
             child: TextField(
               decoration: InputDecoration(
                 fillColor: Colors.grey[300],
                 filled: true,
                 hintText: "Type Your Name",
                 hintStyle: TextStyle(
                   fontWeight: FontWeight.bold,
                 ),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(15.0),
                 )
               ),
             ),
           ),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey[300],
                    filled: true,
                    hintText: "Student ID",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    )
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey[300],
                    filled: true,
                    hintText: "Batch",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    )
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey[300],
                    filled: true,
                    hintText: "Phone Number",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    )
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey[300],
                    filled: true,
                    hintText: "Password",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    )
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey[300],
                    filled: true,
                    hintText: "ConfirmPassword",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    )
                ),
              ),
            ),
            SizedBox(height: 50.0,),

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>HomePage(),
                ),
                );
              },
              child: Container(
                width: 150.0,
                height: 50.0,

                decoration: BoxDecoration(
                  color: Colors.lightGreenAccent,
                  borderRadius: BorderRadius.circular(12.0)
                ),
                child: Center(child: Text("Next",style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),)),

              ),
            ),





          ],
        ),

      ),

    );
  }
}
