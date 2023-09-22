import 'package:flutter/material.dart';

import '../home_page.dart';

class BadmintonBooking extends StatefulWidget {
  const BadmintonBooking({Key? key}) : super(key: key);

  @override
  State<BadmintonBooking> createState() => _BadmintonBookingState();
}

class _BadmintonBookingState extends State<BadmintonBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
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
            ),
          ),
        ),

        child: SingleChildScrollView(
          child: Column(
            children: [

              //1st
              Container(
                width: double.infinity,
                height: 400.0,
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0)),
                    image: DecorationImage(
                      image: AssetImage("Images/badminton.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black38,
                        BlendMode.darken,
                      ),
                    )
                ),
                child: Column(
                  children: [
                    //
                  ],
                ),

              ),
              SizedBox(height: 40.0,),
              Column(
                children: [



                  BoxLabel(Time: "9.00AM - 12.00AM"),
                  BoxLabel(Time: "12.00AM - 02.00AM"),
                  BoxLabel(Time: "02.00AM - 05.00AM"),

                ],
              ),


            ],

          ),
        ),



      ),

      //bottom navigation bar

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.home_filled),
      ),

    );;
  }
}

BoxLabel({Time}){
  return GestureDetector(
      onTap: (){},
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
          child: Container(
            width: double.infinity,
            height: 100.0,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Center(child: Text(Time,style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),)),
          ),
          ),
      );
}