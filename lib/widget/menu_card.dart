import "package:flutter/material.dart";
import 'package:tugasmokeup/models/menu.dart';
import 'package:tugasmokeup/screens/thema.dart';

class menuCard extends StatelessWidget {


  final Menu menu;
  menuCard(this.menu);
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(5.0), //add border radius
                    child: Image.asset(
                      menu.image,
                      height: 100.0,
                      width: 130.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      menu.isPromo
                      ?
                      Image.asset(
                        "assets/Promo.png",
                        width: 47,
                        height: 16,
                      ):
                      Image.asset(
                        "assets/Terlaris.png",
                        width: 47,
                        height: 16,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        menu.name,
                        style: PoppinsTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Rp ${menu.price}",
                            style: PoppinsTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: GreyColor,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Rp ${menu.pricepromo}",
                            style: PoppinsTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: YellowCollor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                       Text(
                  "Free Delivery",
                  style: PoppinsTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: GreyColor,
                  ),
                ),
                    ],
                  )
                ],
              ),
    );
  }
}