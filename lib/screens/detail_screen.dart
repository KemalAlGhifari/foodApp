import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:foodapp/models/size.dart';
import 'package:foodapp/screens/theme.dart';
import 'package:foodapp/widgets/size_card.dart';
import 'package:matcher/matcher.dart';
import 'package:tugasmokeup/screens/thema.dart';

class DetailScreen extends StatelessWidget {
  int i = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Image.asset(
            "assets/Thumbnail.png",
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              SizedBox(
                height: 264,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 30, horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/Promo.png",
                              width: 60,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Burger Regular",
                                  style: PoppinsTextStyle.copyWith(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: BlackColor,
                                  ),
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/Minus.png",
                                    width: 34,
                                  ),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Text(
                                  "1",
                                  style: PoppinsTextStyle.copyWith(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400,
                                    color: BlackColor,
                                  ),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/Plus.png",
                                    width: 34,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Rp 28000",
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
                                  "Rp 22000",
                                  style: PoppinsTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: YellowCollor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              "Pilih Ukuran",
                              style: PoppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: BlackColor),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                SizeCard(
                                    Size(id: 2, name: 'Mini', isActive: true)),
                                SizedBox(
                                  width: 12,
                                ),
                                SizeCard(Size(
                                    id: 2, name: 'Sedang', isActive: false)),
                                SizedBox(
                                  width: 12,
                                ),
                                SizeCard(Size(
                                    id: 2, name: 'Besar', isActive: false)),
                                SizedBox(
                                  width: 12,
                                ),
                                SizeCard(Size(
                                    id: 2,
                                    name: 'Super Besar',
                                    isActive: false)),
                              ],
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              "Catatan Penjual",
                              style: PoppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: BlackColor),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Pembelian diatas 5 item bonus satu burger promo berlaku hanya pengiriman radius 2 KM setiap pembelian mendapat 1 kupon burger 10 kupon burger bisa ditukar dengan 1 burger',
                                style: PoppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: GreyColor,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              "Lokasi Burger Amin",
                              style: PoppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: BlackColor),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "store.png",
                                  width: 50,
                                ),
                                SizedBox(
                                  width: 18,
                                ),
                                Text(
                                  "Jl.Sumur Bandung 4\nJakarta",
                                  style: PoppinsTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: GreyColor),
                                ),
                                Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.chevron_right,
                                      color: GreyColor,
                                      size: 30,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding:
                                        EdgeInsets.only(top: 12, bottom: 12),
                                    elevation: 0.0,
                                    shadowColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18)),
                                    primary: Colors.yellow),
                                onPressed: () {},
                                child: Text(
                                  "Buy",
                                  style: PoppinsTextStyle.copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: white),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ]),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Image.asset(
                    'assets/btn_back.png',
                    width: 40,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/btn_share.png',
                    width: 40,
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
