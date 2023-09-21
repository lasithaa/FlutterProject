import 'package:flutter/material.dart';

class CricketFirstPage extends StatefulWidget {
  const CricketFirstPage({Key? key}) : super(key: key);

  @override
  State<CricketFirstPage> createState() => _CricketFirstPageState();
}

class _CricketFirstPageState extends State<CricketFirstPage> {

  void _showDatePicker()
  {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2025)
    );
  }

  void _navigateToBookingPage() {
    // Navigate to the Booking Page (Replace 'BookingPage' with your actual Booking Page class)
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BookingPage()),
    );
  }

  void _navigateToTodayPage() {
    // Navigate to the Today Page (Replace 'TodayPage' with your actual Today Page class)
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TodayPage()),
    );
  }

  void _navigateToContactPage() {
    // Navigate to the Contact Page (Replace 'ContactPage' with your actual Contact Page class)
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ContactPage()),
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
                      image: AssetImage("Images/cricket.jpg"),
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
                      child: Text("Cricket",style: TextStyle(
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
                        GestureDetector(
                          onTap: _navigateToTodayPage,
                          child: Text("Today",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
                        ),
                        GestureDetector(
                          onTap: _navigateToBookingPage,
                          child: Text("Booking",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold)),
                        ),
                        GestureDetector(
                          onTap: _navigateToContactPage,
                          child: Text("Contact",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold)),
                        ),
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

// Define the BookingPage, TodayPage, and ContactPage here
class BookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Page"),
      ),
      body: Center(
        child: Text("Booking Page Content"),
      ),
    );
  }
}

class TodayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Today Page"),
      ),
      body: Center(
        child: Text("Today Page Content"),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Page"),
      ),
      body: Center(
        child: Text("Contact Page Content"),
      ),
    );
  }
}