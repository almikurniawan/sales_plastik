import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sales_plastik/screens/penjualan.dart';
import 'package:sales_plastik/screens/pilih_toko.dart';
import 'package:sales_plastik/widgets/card_light.dart';
import 'package:sales_plastik/widgets/card_dark.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        canvasColor: Colors.transparent,
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          hintStyle: TextStyle(color: Colors.white),          
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          fillColor: Colors.white.withOpacity(0.3),
          focusColor: Colors.white.withOpacity(0.3),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.white.withOpacity(0.3)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.white.withOpacity(0.3)),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        ),
      ),
      home: const Root(),
    );
  }
}

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  Widget bottomNavigation() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
      ),
      child: BottomAppBar(
        color: Color.fromARGB(66, 19, 122, 153),
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Color.fromARGB(255, 68, 67, 67).withOpacity(0.6),
                  ),
                  child: Icon(
                    Icons.home_rounded,
                    color: Color.fromARGB(255, 79, 241, 247),
                    size: 30,
                  )),
              Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Color.fromARGB(255, 68, 67, 67).withOpacity(0.6),
                  ),
                  child: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 231, 231, 231),
                    size: 30,
                  )),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        bottomNavigationBar: bottomNavigation(),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(4.0),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return PilihToko();
                },
              ));
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
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                )),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Stack(
          alignment: Alignment.topLeft,
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Sales",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 236, 233, 233),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Hai, Almi Kurniawan",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 236, 233, 233),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                  minRadius: 20,
                                  backgroundImage: NetworkImage(
                                      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardLight(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 5),
                                      Text(
                                        "Penjualan Hari Ini",
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 198, 224, 240),
                                          // fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Rp. 1.000.000.000",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.attach_money_outlined,
                                  color: Colors.white,
                                  size: 60,
                                )
                              ],
                            ),
                          )),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return Penjualan();
                                        },
                                      ));
                                    },
                                    child: CardDark(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Icon(
                                            Icons.attach_money,
                                            color: Color.fromARGB(
                                                255, 103, 250, 250),
                                            size: 38,
                                          ),
                                          Text('Penjualan',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16)),
                                          SizedBox(
                                            height: 20,
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: CardLight(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Icon(
                                          Icons.money_off,
                                          color: Colors.white,
                                          size: 38,
                                        ),
                                        Text('Piutang',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16)),
                                        SizedBox(
                                          height: 20,
                                        )
                                      ],
                                    ),
                                  )),
                            ),
                          ],
                        ),
                        SizedBox(height: 0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: CardLight(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Icon(
                                          Icons.person,
                                          color: Colors.white,
                                          size: 38,
                                        ),
                                        Text('Customer',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16)),
                                        SizedBox(
                                          height: 20,
                                        )
                                      ],
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: CardDark(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Icon(
                                          Icons.qr_code,
                                          color: Color.fromARGB(
                                              255, 103, 250, 250),
                                          size: 38,
                                        ),
                                        Text('Produk',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16)),
                                        SizedBox(
                                          height: 20,
                                        )
                                      ],
                                    ),
                                  )),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: CardDark(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Icon(
                                      Icons.credit_card_rounded,
                                      color: Color.fromARGB(255, 103, 250, 250),
                                      size: 38,
                                    ),
                                    Text('Plafon Kredit',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16)),
                                    SizedBox(
                                      height: 20,
                                    )
                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ));
  }
}
