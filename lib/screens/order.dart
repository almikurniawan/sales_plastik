import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sales_plastik/screens/modal_produk.dart';
import 'package:sales_plastik/widgets/card_item.dart';
import 'package:sales_plastik/widgets/card_light.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet<void>(
                isScrollControlled: true,
                context: context,
                builder: (BuildContext context) {
                  return ModalProduk();
                });
          },
          child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      begin: AlignmentDirectional.bottomCenter,
                      end: AlignmentDirectional.topCenter,
                      colors: [
                        Color.fromARGB(255, 235, 30, 218),
                        Color.fromARGB(255, 248, 149, 235)
                      ])),
              child: Icon(Icons.add)),
        ),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 226, 225, 225).withOpacity(0.1),
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios_rounded),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          title: Text('Transaksi'),
        ),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Color(0XFF1b294a)),
            ),
            Positioned(
              left: -10,
              child: Container(
                width: 200.0,
                height: 200.0,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.teal),
              ),
            ),
            Positioned(
              right: -80,
              bottom: 80,
              child: Container(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.tealAccent[400]),
              ),
            ),
            BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 70.0,
                  sigmaY: 70.0,
                ),
                child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    color: Color(0XFF1b294a).withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CardLight(
                                    child: Container(
                                        child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Sumber Barokah",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.white,
                                            size: 14,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "Jl. bendung gerak no. 1 kab. Kediri",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.phone,
                                            color: Colors.grey,
                                            size: 14,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("081-898-898-898",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12,
                                              )),
                                        ],
                                      )
                                    ],
                                  ),
                                )))),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    "Rp. 100.000",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.all(8),
                              itemBuilder: (context, index) {
                                Widget item = CardItem(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Botol Taperware " +
                                                  (index + 1).toString(),
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.attach_money,
                                                  color: Colors.white,
                                                  size: 14,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  "30.000",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.money,
                                                  color: Colors.grey,
                                                  size: 14,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("60.000",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                    )),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                          width: 30,
                                          child: Text("3",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 24))),
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.add,
                                            color: Color.fromARGB(
                                                255, 221, 221, 221),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Icon(
                                            Icons.remove_outlined,
                                            color: Color.fromARGB(
                                                255, 221, 221, 221),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ));
                                return Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: item);
                              },
                              itemCount: 3,
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                      primary:
                                          Color.fromARGB(255, 8, 190, 120)),
                                  onPressed: () {},
                                  icon: Icon(Icons.payment),
                                  label: Text(
                                    "Bayar",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )))
          ],
        ));
  }
}
