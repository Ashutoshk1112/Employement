import 'package:flutter/material.dart';
import 'package:employement/Job.dart';
import 'package:employement/Constants.dart';
import 'package:employement/Component/DetailContent.dart';
import 'package:employement/Component/DetailHeder.dart';
import 'package:employement/Component/DetailFooter.dart';

class DescriptionScreen extends StatelessWidget {
  final Job data;
  const DescriptionScreen({Key key,this.data}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                DetailHeader(data: data),
                DetailContent(data: data),
              ],
            ),
            DetailFooter(),
          ],
        ),
      ),
    );
  }
}