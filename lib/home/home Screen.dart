import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Model/product Model.dart';

productModel p1 = productModel();
TextEditingController txtproname = TextEditingController();
TextEditingController txtproprice = TextEditingController();

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  List<productModel> productList = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(Icons.all_inclusive_sharp, color: Colors.black),
          actions: [
            Icon(Icons.refresh, color: Colors.black),
            SizedBox(width: 10)
          ],
          title: Text(
            "Invoice Maker",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
            //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          showDialog(context: context, builder: (context) => Dialog(
                            child: Container(
                              height: 300,
                              width: 300,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    TextField(
                                      keyboardType: TextInputType.name,
                                      controller: txtproname,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: "Product Name",
                                          hintStyle: GoogleFonts.tinos()),
                                    ),
                                    TextField(
                                      keyboardType: TextInputType.number,
                                      controller: txtproprice,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: "Price",
                                          hintStyle: GoogleFonts.tinos()),
                                    ),
                                    SizedBox(height: 20),

                                  ],
                                ),
                              ),
                            ),
                          ),);
                          setState(() {
                            ListView.builder(itemBuilder: (context, index) => itemList(index, txtproname.text as String, txtproname.text as String),);
                          });
                        });
                            //     },
                            // ),
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Product",
                                style: GoogleFonts.tinos(
                                    color: Colors.white, fontSize: 25)),
                            Icon(Icons.add, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'invoiceScreen');
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Invoice",
                                style: GoogleFonts.tinos(
                                    color: Colors.white, fontSize: 25)),
                            Icon(Icons.download, color: Colors.white),


                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget itemList(int index, String proname, String proprice) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("No.", style: GoogleFonts.tinos(fontSize: 18)),
                  SizedBox(height: 20),
                  Text("${index + 1}", style: GoogleFonts.tinos(fontSize: 18))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Product Name", style: GoogleFonts.tinos(fontSize: 18)),
                  SizedBox(height: 20),
                  Text("${proname}", style: GoogleFonts.tinos(fontSize: 18))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Price", style: GoogleFonts.tinos(fontSize: 18)),
                  SizedBox(height: 20),
                  Text("${proprice}", style: GoogleFonts.tinos(fontSize: 18)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}
