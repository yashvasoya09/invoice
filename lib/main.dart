import 'package:flutter/material.dart';
import 'package:invoice/home/home%20Screen.dart';
import 'package:invoice/home/invoice%20screen.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => homeScreen(),
      'invoiceScreen':(context) => invoiceScreen(),
    },
  ),);
}