import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasmokeup/models/katagori.dart';



class recomend extends StatelessWidget {
    final Kategori katagori;
  recomend(this.katagori);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 3),
      width: 181,
      height: 125,
      margin: EdgeInsets.only(left: 2, right: 2, bottom: 5, top: 5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), //color of shadow
                //spread radius
                blurRadius: 2, // blur radius
              )
            ]),
      child: Column(
        children: [
          Image.asset(
            katagori.image,
            width: 176,
            height: 89,
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    katagori.name,
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
