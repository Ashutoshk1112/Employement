import 'package:flutter/material.dart';
import 'package:employement/Constants.dart';
import 'package:employement/Job.dart';

class DetailContent extends StatelessWidget {
  const DetailContent({
    Key key,
    @required this.data,
  }) : super(key: key);

  final Job data;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: kSpacingUnit * 4,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kSpacingUnit * 5),
            topRight: Radius.circular(kSpacingUnit * 5),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: kSpacingUnit * 5),
              Center(
                child: Column(
                  children: [
                    SizedBox(height: kSpacingUnit * 2),
                    Text(
                      data.jobTitle,
                      style: kTitleTextStyle.copyWith(fontSize: 50.0),
                    ),
                    SizedBox(height: kSpacingUnit),
                    Text(
                      data.location,
                      style: kCaptionTextStyle.copyWith(fontSize: 20.0),
                    ),
                    SizedBox(height: kSpacingUnit),
                    Text(
                      data.salary,
                      style: kTitleTextStyle.copyWith(fontSize: 25.0),
                    ),
                  ],
                ),
              ),
              SizedBox(height: kSpacingUnit * 5),
              Text(
                'Responsibilities',
                style: kSubTitleTextStyle.copyWith(fontSize: 20.0),
              ),
              SizedBox(height: kSpacingUnit * 2),
              Column(
                children: data.responsibility
                    .map(
                      (e) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "•  ",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 25.0),
                      ),
                      Expanded(
                        child: Text(
                          "$e\n",
                          style: kSubtitleStyle.copyWith(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300,
                            height: 1.5,
                            color: Color(0xFF5B5B5B),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                    .toList(),
              ),
              SizedBox(height: kSpacingUnit * 15),
            ],
          ),
        ),
      ),
    );
  }
}