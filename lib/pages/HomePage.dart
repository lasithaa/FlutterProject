import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nsbm_recreational_center/pages/gym_first.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            ),
          ),
        ),



        child: SingleChildScrollView(
          child: Column(


            //main column

            children: [
              //1
              SizedBox(height: 100.0,),
              Container(
                width: 350.0,
                height: 150.0,

                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(12.0)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //1.1
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 20.0),
                          child: Container(
                            width: 30.0,
                            height: 30.0,

                            decoration: BoxDecoration(
                              color: Colors.lightGreenAccent,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Text("HI, John",style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text("Select Your Slot and Save Time",style: TextStyle(
                        color: Colors.white,
                      ),),
                    ),

                    SizedBox(height: 10.0,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        width: 350.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    )


                  ],
                ),

              ),

              SizedBox(height: 40.0,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text("Sports",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),),
                    SizedBox(width: 20.0,),
                    Text("Time Table",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),),
                    SizedBox(width: 20.0,),
                    Text("Booking",style: TextStyle(
                        color: Colors.lightGreenAccent,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),),
                  ],
                ),
              ),

              SizedBox(height: 40.0,),



              //swimming pool

              Container(
                width: 350.0,
                height: 160.0,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(12.0),
                 color: Colors.white,
                 
               ),

                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>GymFirstPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 350.0,
                      height: 160.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                        image: DecorationImage(
                          image: AssetImage("Images/gym.jpg"),
                          colorFilter: ColorFilter.mode(
                              Colors.black54,
                              BlendMode.darken
                          ),
                          fit: BoxFit.cover
                        )
                      ),

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 50.0),
                        child: Text("Gym",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                    ),
                  ),
                ),

              ),

              SizedBox(height: 20.0,),

              //cricket

              Container(
                width: 350.0,
                height: 160.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,

                ),

                child: GestureDetector(
                  onTap: (){},
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 350.0,
                      height: 160.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          image: DecorationImage(
                              image: AssetImage("Images/swimmingpool.jpg"),
                              colorFilter: ColorFilter.mode(
                                  Colors.black54,
                                  BlendMode.darken
                              ),
                              fit: BoxFit.cover
                          )
                      ),

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 50.0),
                        child: Text("Swimming",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                    ),
                  ),
                ),

              ),

              SizedBox(height: 20.0,),

              Container(
                width: 350.0,
                height: 160.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,

                ),

                child: GestureDetector(
                  onTap: (){},
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 350.0,
                      height: 160.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          image: DecorationImage(
                              image: AssetImage("Images/cricket.jpg"),
                              colorFilter: ColorFilter.mode(
                                  Colors.black54,
                                  BlendMode.darken
                              ),
                              fit: BoxFit.cover
                          )
                      ),

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 50.0),
                        child: Text("Cricket",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                    ),
                  ),
                ),

              ),

              SizedBox(height: 20.0,),

              Container(
                width: 350.0,
                height: 160.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,

                ),

                child: GestureDetector(
                  onTap: (){},
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 350.0,
                      height: 160.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          image: DecorationImage(
                              image: AssetImage("Images/badminton.jpg"),
                              colorFilter: ColorFilter.mode(
                                  Colors.black54,
                                  BlendMode.darken
                              ),
                              fit: BoxFit.cover
                          )
                      ),

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 50.0),
                        child: Text("Badminton",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                    ),
                  ),
                ),

              ),




            ],




          ),
        ),




      ),

      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),
          child: GNav(
            padding: EdgeInsets.all(16.0),
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.lightGreenAccent,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8.0,
            tabs: [
              GButton(icon: Icons.home,text: "Home",),
              GButton(icon: Icons.location_on_sharp,text: "Location",),
              GButton(icon: Icons.people,text: "People",),
              GButton(icon: Icons.calendar_month,text: "Calendar",),
            ],
          ),
        ),
      ),

    );
  }
}
