import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:tugasmokeup/models/menu.dart';
import 'package:tugasmokeup/screens/sidebar.dart';
import 'package:tugasmokeup/screens/thema.dart';
import 'package:tugasmokeup/widget/catagories.dart';
import 'package:tugasmokeup/models/katagori.dart';
import 'package:tugasmokeup/widget/menu_card.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          toolbarHeight: 64,
          centerTitle: true,
          backgroundColor: YellowCollor,
          title: Container(
            width: 230,
            height: 22,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  fillColor: Colors.white,
                  hintText: 'Search...',
                  border: InputBorder.none),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: IconButton(onPressed: () {}, icon: const Icon(Icons.map)),
            )
          ],
        ),
        drawer: sidebar(),
        body: Container(
            child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Catagories",
                style: PoppinsTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 8,
              ),

              // listview
              Container(
                height: 135,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    recomend(Kategori(
                        image: "assets/restauran.png", name: "Restauran")),
                    SizedBox(
                      width: 12,
                    ),
                    recomend(Kategori(
                        image: "assets/coffe.png", name: "Coffe Shop")),
                    SizedBox(
                      width: 12,
                    ),
                    recomend(Kategori(
                        image: "assets/sehat.png", name: "Menu Sehat")),
                    SizedBox(
                      width: 12,
                    ),
                    recomend(
                        Kategori(image: "assets/saji.png", name: "Cepat Saji")),
                  ],
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                "Recomended Menu",
                style: PoppinsTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 8,
              ),

              menuCard(Menu(
                  id: 1,
                  image: "assets/pic1.png",
                  name: "Burger Regular",
                  price: 12000,
                  pricepromo: 8000,
                  note: "lorem",
                  isPromo: true)),
              SizedBox(
                height: 10,
              ),
              menuCard(Menu(
                  id: 2,
                  image: "assets/pic2.png",
                  name: "paket Burger 1",
                  price: 15000,
                  pricepromo: 1300,
                  note: "lorem",
                  isPromo: false)),
              SizedBox(
                height: 10,
              ),
              menuCard(Menu(
                  id: 3,
                  image: "assets/pic3.png",
                  name: "Paket Burger 2",
                  price: 20000,
                  pricepromo: 18000,
                  note: "lorem",
                  isPromo: false)),
              SizedBox(
                height: 10,
              ),
              menuCard(Menu(
                  id: 4,
                  image: "assets/pic4.png",
                  name: "Paket Burger 3",
                  price: 25000,
                  pricepromo: 22000,
                  note: "lorem",
                  isPromo: false))
            ],
          ),
        )));
  }
}
