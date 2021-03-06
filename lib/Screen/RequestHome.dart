import 'package:flutter/material.dart';
import 'package:employement/Component/ReqCard.dart';
import 'package:employement/Screen/DescriptionScreen.dart';
import 'package:employement/Job.dart';

class ReqHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar: AppBar(
        backgroundColor: Color(0xFFF6F6F6),
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 18.0,
            top: 12.0,
            bottom: 12.0,
            right: 12.0,
          ),
          child: IconButton(
            icon: Icon(
              Icons.notifications,
              size: 25.0,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
        actions: <Widget>[
          Icon(Icons.supervised_user_circle, size: 25.0, color: Colors.black),
          SizedBox(
            width: 18.0,
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 18.0),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 25.0,
              ),
              Text(
                  "Hii ,\nHere Are Your Requests" ,
                  style:TextStyle(fontSize: 23,fontWeight: FontWeight.w500,wordSpacing: 2.5,color: Colors.black) ),
              SizedBox(height: 45.0,),
              ListView.builder(
                itemCount:4,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  var recent = JobList[index];
                  return InkWell(
                    onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> DescriptionScreen(data: JobList[1],)) );
                    },
                    child: CategoryCard(job: JobList[1], ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

