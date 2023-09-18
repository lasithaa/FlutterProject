import 'package:flutter/material.dart';

class GymFirstPage extends StatefulWidget {
  const GymFirstPage({Key? key}) : super(key: key);

  @override
  State<GymFirstPage> createState() => _GymFirstPageState();
}

class _GymFirstPageState extends State<GymFirstPage> {

  void _showDatePicker()
  {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2025)
    );
  }

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
                  BlendMode.darken
              ),
            ),
          ),

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
                    image: AssetImage("Images/gym.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black38,
                        BlendMode.darken,
                    ),
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 150.0,),
                    Center(
                      child: Text("Gym",style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),

                    SizedBox(height: 20.0,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Today",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
                        Text("Booking",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold)),
                        Text("Contact",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold)),
                      ],
                    ),

                  ],
                ),

              ),
              SizedBox(height: 120.0,),
              Column(
                children: [
                  MaterialButton(
                      onPressed: _showDatePicker,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0,),
                      child: Text("Choose Date",style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                    color: Colors.lightBlue,
                  ),

                ],
              )
            ],
            
          ),
          
          

        ),


    );
  }
}
