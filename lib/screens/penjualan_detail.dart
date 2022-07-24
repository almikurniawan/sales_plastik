import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sales_plastik/widgets/card_item.dart';
import 'package:sales_plastik/widgets/card_light.dart';

class PenjualanDetail extends StatefulWidget {
  const PenjualanDetail({Key? key}) : super(key: key);

  @override
  State<PenjualanDetail> createState() => _PenjualanDetailState();
}

class _PenjualanDetailState extends State<PenjualanDetail> {
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
          title: Text('Detail Penjualan'),
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
                      padding:
                          const EdgeInsets.only(top: 60, left: 8, right: 8),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 30,),
                            CardLight(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                "Rp. 1.000.000",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "01 Juli 2022, 08:00",
                                              style: TextStyle(
                                                  color: Color.fromARGB(255, 252, 252, 252),
                                                  fontSize: 12),
                                            )
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "No. TRX ERU23498F2342",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text("Toko Barokah",
                                                style: TextStyle(
                                                  color: Color.fromARGB(255, 230, 230, 230),
                                                ))
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: MediaQuery.removePadding(
                                removeTop: true,
                                context: context,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                    child: CardItem(child: Container(
                                      height: 50,
                                    )),
                                  );
                                }, itemCount: 10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )))
          ],
        ));
  }
}
