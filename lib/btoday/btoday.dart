import 'package:flutter/material.dart';

class TodayBadminton extends StatefulWidget {
  const TodayBadminton({Key? key}) : super(key: key);

  @override
  State<TodayBadminton> createState() => _TodayBadmintonState();
}

class _TodayBadmintonState extends State<TodayBadminton> {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 180.0,
                height: 70.0,
                child: MaterialButton(
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
              ),

            ],
          ),
        ),

        );;
    }
}