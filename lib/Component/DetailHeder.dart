import 'package:flutter/material.dart';
import 'package:employement/Job.dart';
import 'package:employement/Constants.dart';
class DetailHeader extends StatelessWidget {
  const DetailHeader({
    Key key,
    @required this.data,
  }) : super(key: key);

  final Job data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: kSpacingUnit * 2,
        vertical: kSpacingUnit * 3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Text(
            data.hiringName,
            style: kSubTitleTextStyle.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(width: 30.0),
        ],
      ),
    );
  }
}