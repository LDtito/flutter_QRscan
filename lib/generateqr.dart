import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGenerator extends StatefulWidget {
  @override
  _QrGeneratorState createState() => _QrGeneratorState();
}

class _QrGeneratorState extends State<QrGenerator> {
  String qrText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Genera tu codigo QR'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              onChanged: (text) {
                setState(() {
                  qrText = text;
                });
              },
              decoration: InputDecoration(
                labelText: 'Ingrese algo aquí',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                  child: qrText.isNotEmpty
                      ? QrImageView(
                        data: qrText,
                        version: QrVersions.auto,
                        size: 200.0,
                      )
                      : Text(
                          'example: hola mundo',
                          style: TextStyle(fontSize: 18.0),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}