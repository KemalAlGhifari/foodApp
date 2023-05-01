import 'package:flutter/material.dart';
import 'package:tugasmokeup/models/size.dart';
import 'package:tugasmokeup/screens/thema.dart';


class SizeCard extends StatelessWidget {
  // const SizeCard({super.key}) ;
  final Size size;
  const SizeCard(this.size);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: size.isActive
            ? Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: GreyColor, width: 1.5),
                    borderRadius: BorderRadius.circular(5),
                    color: whiteGrey),
                child: Text(
                  size.name,
                  style: PoppinsTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: BlackColor),
                ),
              )
            : Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: GreyColor, width: 1.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  size.name,
                  style: PoppinsTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: BlackColor),
                ),
              ));
  }
}
