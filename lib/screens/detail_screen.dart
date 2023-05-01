import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import 'package:tugasmokeup/models/size.dart';
import 'package:tugasmokeup/screens/thema.dart';
import 'package:tugasmokeup/widget/size_card.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class DetailScreen extends StatefulWidget {
  int id;
  String image;
  String name;
  int price;
  int pricepromo;
  String note;
  bool isPromo;
  DetailScreen(this.id, this.image, this.name, this.price, this.pricepromo,
      this.note, this.isPromo,
      {Key? key})
      : super(key: key);

  @override
  State<DetailScreen> createState() =>
      // ignore: no_logic_in_create_state
      _DetailScreenState(id, image, name, price, pricepromo, note, isPromo);
}

class _DetailScreenState extends State<DetailScreen> {
  // ignore: unused_field
  final int _id;
  final String _image;
  final String _name;
  final int _price;
  final int _pricepromo;
  // ignore: unused_field
  final String _note;
  final bool _isPromo;

  _DetailScreenState(this._id, this._image, this._name, this._price,
      this._pricepromo, this._note, this._isPromo);

  late int dataPrice = _price;
  late int dataPricePromo = _pricepromo;

  late int price = _price;
  late int pricePromo = _pricepromo;

  late String total = "Rp.$_pricepromo";

  int i = 1;
  bool isMini = true; // harga tetap
  bool isSedang = false; // harga + 2000
  bool isBesar = false; // hharga + 4000
  bool isSuperBesar = false; // harga + 6000

  void _minus() {
    if (i > 1) {
      setState(() {
        i--;
        if (isMini == true) {
          price = dataPrice * i;
          pricePromo = dataPricePromo * i;
        } else if (isSedang == true) {
          price = (dataPrice + 2000) * i;
          pricePromo = (dataPricePromo + 2000) * i;
        } else if (isBesar == true) {
          price = (dataPrice + 4000) * i;
          pricePromo = (dataPricePromo + 4000) * i;
        } else if (isSuperBesar == true) {
          price = (dataPrice + 6000) * i;
          pricePromo = (dataPricePromo + 6000) * i;
        }
      });
    }
  }

  void _plus() {
    if (i > 0) {
      setState(() {
        i++;
        if (isMini == true) {
          price = dataPrice * i;
          pricePromo = dataPricePromo * i;
        } else if (isSedang == true) {
          price = (dataPrice + 2000) * i;
          pricePromo = (dataPricePromo + 2000) * i;
        } else if (isBesar == true) {
          price = (dataPrice + 4000) * i;
          pricePromo = (dataPricePromo + 4000) * i;
        } else if (isSuperBesar == true) {
          price = (dataPrice + 6000) * i;
          pricePromo = (dataPricePromo + 6000) * i;
        }
      });
    }
  }

  void _mini() {
    setState(() {
      price = dataPrice * i;
      pricePromo = dataPricePromo * i;
      isMini = true;
      isSedang = false;
      isBesar = false;
      isSuperBesar = false;
    });
  }

  void _sedang() {
    setState(() {
      price = (dataPrice + 2000) * i;
      pricePromo = (dataPricePromo + 2000) * i;
      isMini = false;
      isSedang = true;
      isBesar = false;
      isSuperBesar = false;
    });
  }

  void _besar() {
    setState(() {
      price = (dataPrice + 4000) * i;
      pricePromo = (dataPricePromo + 4000) * i;
      isMini = false;
      isSedang = false;
      isBesar = true;
      isSuperBesar = false;
    });
  }

  void _superbesar() {
    setState(() {
      price = (dataPrice + 6000) * i;
      pricePromo = (dataPricePromo + 6000) * i;
      isMini = false;
      isSedang = false;
      isBesar = false;
      isSuperBesar = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      // ignore: deprecated_member_use
      launch(url);
    }

    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Image.network(
            _image,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              const SizedBox(
                height: 264,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
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
                            const EdgeInsets.symmetric(vertical: 30, horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _isPromo
                                ? Image.asset(
                                    "assets/Promo.png",
                                    width: 60,
                                  )
                                : Image.asset(
                                    "assets/Terlaris.png",
                                    width: 60,
                                  ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Text(
                                  _name,
                                  style: PoppinsTextStyle.copyWith(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: BlackColor,
                                  ),
                                ),
                                const Spacer(),
                                InkWell(
                                  onTap: _minus,
                                  child: Image.asset(
                                    "assets/Minus.png",
                                    width: 34,
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Text(
                                  "$i",
                                  style: PoppinsTextStyle.copyWith(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400,
                                    color: BlackColor,
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                InkWell(
                                  onTap: _plus,
                                  child: Image.asset(
                                    "assets/Plus.png",
                                    width: 34,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Text(
                                  NumberFormat.currency(
                                          locale: 'id',
                                          symbol: 'Rp',
                                          decimalDigits: 0)
                                      .format(price),
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
                                      .format(pricePromo),
                                  style: PoppinsTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: YellowCollor,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Text(
                              "Pilih Ukuran",
                              style: PoppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: BlackColor),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: _mini,
                                  child: SizeCard(Size(
                                      id: 2, name: 'Mini', isActive: isMini)),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                InkWell(
                                  onTap: _sedang,
                                  child: SizeCard(Size(
                                      id: 2,
                                      name: 'Sedang',
                                      isActive: isSedang)),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                InkWell(
                                  onTap: _besar,
                                  child: SizeCard(Size(
                                      id: 2, name: 'Besar', isActive: isBesar)),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                InkWell(
                                  onTap: _superbesar,
                                  child: SizeCard(Size(
                                      id: 2,
                                      name: 'Super Besar',
                                      isActive: isSuperBesar)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Text(
                              "Catatan Penjual",
                              style: PoppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: BlackColor),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            SizedBox(
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
                            const SizedBox(
                              height: 18,
                            ),
                            Text(
                              "Lokasi Burger Amin",
                              style: PoppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: BlackColor),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            InkWell(
                              onTap: () {
                                launchUrl(
                                    "https://goo.gl/maps/72N3eX79Qh6sa5tN6");
                              },
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/store.png",
                                    width: 50,
                                  ),
                                  const SizedBox(
                                    width: 18,
                                  ),
                                  Text(
                                    "Jl.Sumur Bandung 4\nDepok",
                                    style: PoppinsTextStyle.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: GreyColor),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.chevron_right,
                                        color: GreyColor,
                                        size: 30,
                                      ))
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding:
                                        const EdgeInsets.only(top: 12, bottom: 12), backgroundColor: Colors.yellow,
                                    elevation: 0.0,
                                    shadowColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18))),
                                onPressed: () {
                                  launchUrl(
                                      "https://wa.me/6289699773627?text=saya%20ingin%20membeli%20$i%20Burger%20dengan%20ukuran%20Mini%20seharga%20$total");
                                },
                                child: Text(
                                  "Buy",
                                  style: PoppinsTextStyle.copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
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
