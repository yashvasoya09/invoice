import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice/Model/product%20Model.dart';
import 'package:invoice/home/home%20Screen.dart';

class invoiceScreen extends StatefulWidget {
  const invoiceScreen({Key? key}) : super(key: key);

  @override
  State<invoiceScreen> createState() => _invoiceScreenState();
}

class _invoiceScreenState extends State<invoiceScreen> {
  productModel p1 = productModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.all_inclusive_sharp, color: Colors.black),
          title: Text(
            "Invoice",
            style: GoogleFonts.tinos(color: Colors.black, fontSize: 25),
          ),
          centerTitle: true,
          actions: [
            Icon(
              Icons.save,
              color: Colors.black,
            ),
            SizedBox(width: 10)
          ],
          elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                "Product Shoping",
                style: GoogleFonts.tinos(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Name : Yash Vasoya",
                style: GoogleFonts.tinos(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Text(
                "Mobile : 9988997788",
                style: GoogleFonts.tinos(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 30,
                        width: 100,
                        color: Colors.black26,
                        child: Center(
                            child: Text("Product",
                                style: GoogleFonts.tinos(fontSize: 20))),
                      ),
                      SizedBox(height: 15),
                      for(int i=0;i<5;i++)
                        Text("${productList[i]}", style: GoogleFonts.tinos(fontSize: 18)),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 30,
                        width: 100,
                        color: Colors.black26,
                        child: Center(
                            child: Text("price",
                                style: GoogleFonts.tinos(fontSize: 20))),
                      ),
                      SizedBox(height: 15),
                      for(int i=0;i<5;i++)

                        Text("${productPrice[i]}",style: GoogleFonts.tinos(fontSize: 18)),

                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Container(
                        height: 30,
                        width: 100,
                        color: Colors.black26,
                        child: Center(
                            child: Text("Qntitiy",
                                style: GoogleFonts.tinos(fontSize: 20))),
                      ),
                      SizedBox(height: 15),
                      for(int i=0;i<5;i++)
                        Text("1",style: GoogleFonts.tinos(fontSize: 18)),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Container(
                        height: 30,
                        width: 100,
                        color: Colors.black26,
                        child: Center(
                          child: Text(
                            "amount",
                            style: GoogleFonts.tinos(fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      for(int i=0;i<5;i++)
                        Text("${productPrice[i]}",style: GoogleFonts.tinos(fontSize: 18)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(color: Colors.black,height: 3,),
              SizedBox(height: 20),
              Container(height: 30,width: 30,color: Colors.black26,child: Center(child: Text("5",style: GoogleFonts.tinos(fontSize: 25))),),
              SizedBox(height: 15),
              Container(height: 30,width: 160,color: Colors.black26,child: Center(child: Text("Total Amount: 1550",style: GoogleFonts.tinos(fontSize: 15))),),
              SizedBox(height: 20),
              Image.network("https://thumbs.dreamstime.com/z/grunge-stamp-paid-1952043.jpg",height: 110,width:110,),
              SizedBox(height: 25),
              Center(child: Text("Thank You",style: GoogleFonts.tangerine(fontSize: 30)),),
              SizedBox(height: 15),
              Center(child: Text("Welcome Again",style: GoogleFonts.tangerine(fontSize: 30)),),],
          ),
        ),
      ),
    );
  }
}
