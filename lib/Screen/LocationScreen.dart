import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:employement/Component/LocationData.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  LocationData ld=LocationData();
    String cityName;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: Column(
          children: <Widget>[
            SizedBox(height: 50.0,),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter The Location'
                  ),
                  onChanged: (value){
                    cityName=value;
                  },
                  onSubmitted: (value){
                    Navigator.pop(context,cityName);
                  },
                ),
              ),
            ),
            FlatButton(
              onPressed:(){
                ld.getCurrentlocation();
              } ,

              child: Row(
                children: <Widget>[
                  Text("Current Location"),
                  SizedBox(width: 10.0,),
                  Icon(Icons.location_searching,size: 25.0,)
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/Location.gif')
                    )
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            )
          ],
        ),
      );
    }
  }
