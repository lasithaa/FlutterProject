import 'package:flutter/material.dart';
import 'package:new_nsbm_recreational_center/pages/badminton/badminton_booking.dart';

import '../gym_booking.dart';
import '../gym_contact.dart';
import '../home_page.dart';
import '../today_gym.dart';

class FirstBadminton extends StatefulWidget {
  const FirstBadminton({Key? key}) : super(key: key);

  @override
  State<FirstBadminton> createState() => _FirstBadmintonState();
}

class _FirstBadmintonState extends State<FirstBadminton> {
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
            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
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
                    image: AssetImage("Images/badminton.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black38,
                      BlendMode.darken,
                    ),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150.0,
                  ),
                  Center(
                    child: Text(
                      "Badminton",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => TodayGym()),
                            );
                          },
                          child: Text("Today",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold))),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => BadmintonBooking()));
                          },
                          child: Text("Booking",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold))),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => GymContact()));
                          },
                          child: Text("Contact",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold))),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120.0,
            ),
            Column(),
          ],
        ),
      ),

      //bottom navigation bar

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomePage()));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.home_filled),
      ),
    );
  }
}
