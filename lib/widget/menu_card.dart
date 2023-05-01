import "package:flutter/material.dart";
import 'package:intl/intl.dart';
import 'package:tugasmokeup/models/menu.dart';
import 'package:tugasmokeup/screens/detail_screen.dart';
import 'package:tugasmokeup/screens/thema.dart';

class menuCard extends StatelessWidget {
  final Menu menu;
  menuCard(this.menu);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailScreen(
          menu.id, menu.image, menu.name, menu.price, menu.pricepromo, menu.note, menu.isPromo
        )));
      },
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20), //add border radius
                child: Container(
                  height: 110.0,
                  width: 130.0,
                  child: Image.network(
                  menu.image,
                  fit: BoxFit.cover,
                ),
                )
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  menu.isPromo
                      ? Image.asset(
                          "assets/Promo.png",
                          width: 47,
                          height: 16,
                        )
                      : Image.asset(
                          "assets/Terlaris.png",
                          width: 47,
                          height: 16,
                        ),
                  const SizedBox(
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
                        NumberFormat.currency(
                                          locale: 'id',
                                          symbol: 'Rp',
                                          decimalDigits: 0)
                                      .format(menu.price),
                        style: PoppinsTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: GreyColor,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        NumberFormat.currency(
                                          locale: 'id',
                                          symbol: 'Rp',
                                          decimalDigits: 0)
                                      .format(menu.pricepromo),
                        style: PoppinsTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: YellowCollor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
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
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
