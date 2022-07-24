import 'dart:ui';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:sales_plastik/screens/penjualan_detail.dart';
import 'package:sales_plastik/widgets/card_item.dart';

class Penjualan extends StatefulWidget {
  const Penjualan({Key? key}) : super(key: key);

  @override
  State<Penjualan> createState() => _PenjualanState();
}

class _PenjualanState extends State<Penjualan> {
  DateTime selectedDate = DateTime.now();

  selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Color.fromARGB(255, 1, 104, 136),
            colorScheme: ColorScheme.light(primary: Color.fromARGB(255, 1, 104, 136)),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

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
          title: Text('Penjualan'),
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
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("01 Jul 2022",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 254, 255, 255))),
                                    GestureDetector(
                                        onTap: () {
                                          selectDate(context);
                                        },
                                        child: Icon(
                                          Icons.date_range,
                                          color:
                                              Color.fromARGB(255, 65, 216, 236),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.all(8),
                              itemBuilder: (context, index) {
                                Widget item = CardItem(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
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
                                                color: Colors.grey,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Column(
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
                                                      color: Colors.grey,
                                                    ))
                                              ],
                                            ),
                                          ),
                                          IconButton(
                                              onPressed: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                  builder: (context) {
                                                    return PenjualanDetail();
                                                  },
                                                ));
                                              },
                                              icon: Icon(
                                                Icons.arrow_forward_ios_rounded,
                                                color: Color.fromARGB(
                                                    255, 221, 221, 221),
                                              ))
                                        ],
                                      ),
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
