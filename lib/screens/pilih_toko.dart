import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sales_plastik/screens/order.dart';
import 'package:sales_plastik/widgets/card_item.dart';

class PilihToko extends StatefulWidget {
  const PilihToko({Key? key}) : super(key: key);

  @override
  State<PilihToko> createState() => _PilihTokoState();
}

class _PilihTokoState extends State<PilihToko> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          title: Text('Pilih Toko'),
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
                                child: TextField(
                                  cursorColor: Colors.white,
                                  decoration: InputDecoration(
                                    hintText: 'Cari Toko',
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                  ),
                                  style: TextStyle(color: Colors.white),
                                )),
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
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => Order()));
                                          },
                                          icon: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            color: Color.fromARGB(
                                                255, 221, 221, 221),
                                          ))
                                    ],
                                  ),
                                ));
                                return Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: item);
                              },
                              itemCount: 100,
                            ),
                          ],
                        ),
                      ),
                    )))
          ],
        ));
  }
}
