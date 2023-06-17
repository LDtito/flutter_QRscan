import 'package:flutter/material.dart';

import 'barscann.dart';
import 'inicio.dart';
import 'generateqr.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lector de codigos QR',
      theme: ThemeData(primarySwatch: Colors.red),
       debugShowCheckedModeBanner: false, // Agrega esta línea para desactivar el banner de depuración

      routes: {
        '/': (context) => INICIO(),
        '/qr_scan': (context) => QRScann(),
        '/bar_scan': (context) => ScannBar(),
        '/qr_generator': (context) => QrGenerator(),
      },
    );
  }
}