import 'package:cloud_firestore/cloud_firestore.dart';
import "package:flutter/material.dart";
import 'package:tugasmokeup/models/menu.dart';
import 'package:tugasmokeup/screens/sidebar.dart';
import 'package:tugasmokeup/screens/thema.dart';
import 'package:tugasmokeup/widget/catagories.dart';
import 'package:tugasmokeup/models/katagori.dart';
import 'package:tugasmokeup/widget/menu_card.dart';

// ignore: camel_case_types
class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

// ignore: camel_case_types
class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference products = firestore.collection('products');
    return Scaffold(
            resizeToAvoidBottomInset: false,

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
            child: const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  fillColor: Colors.white,
                  hintText: 'Search...',
                  counterText: "",
                  contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 50.0, 10.0),
    
                  border: InputBorder.none),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(onPressed: () {}, icon: const Icon(Icons.map)),
            )
          ],
        ),
        drawer: sidebar(),
        body: ListView(
          children: [Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
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
                StreamBuilder<QuerySnapshot>(
                    stream: products.orderBy('id', descending: false).snapshots(),
                    builder: (_, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          children: (snapshot.data! as QuerySnapshot)
                              .docs
                              .map(
                                (e) => menuCard(Menu(
                                    id: e['id'],
                                    image: e['image'],
                                    name: e['name'],
                                    price: e['price'],
                                    pricepromo: e['pricePromo'],
                                    note: e['note'],
                                    isPromo: e['isPromo'])),
                              )
                              .toList(),
                              
                        );
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    }),
              

               
              ],
            ),
          ),
          ]
        ));
  }
}
