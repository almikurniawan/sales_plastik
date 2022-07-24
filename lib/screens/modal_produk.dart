import 'package:flutter/material.dart';
import 'package:sales_plastik/widgets/card_item.dart';

class ModalProduk extends StatefulWidget {
  const ModalProduk({Key? key}) : super(key: key);

  @override
  State<ModalProduk> createState() => _ModalProdukState();
}

class _ModalProdukState extends State<ModalProduk> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: MediaQuery.of(context).size.height * 0.8,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 37, 56, 102),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 2,
                spreadRadius: 1,
                color: Color.fromARGB(66, 0, 0, 0),
              ),
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          children: [
            TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                hintText: 'Cari Produk',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.68,
              child: ListView.builder(
                itemCount: 100,
                
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: CardItem(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Botol Taperware " + (index + 1).toString(),
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
                              ],
                            ),
                          ),
                          Icon(
                            Icons.add,
                            color: Color.fromARGB(255, 221, 221, 221),
                          )
                        ],
                      ),
                    )),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
