import: 'package:qrscan/qrscan.dart' as scaner;


class QRScann extends StatefulWidget {
  @override
  _QRScannState createState()=> _QRScannState();
}

class _QRScannState extends State<QRScann> {
  String qrValue = "Codigo Qr";

  void scanQr() async {
    String cameraScanResult = await scanner.scan();
      setState((){
        qrValue = cameraScanResult;
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Qr scan',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title:Text(
          'Qr Scan'
          ),//text
        ),//AppBar
        body: Center(
          child: Container(
            child: Text(
              qrValue
              textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 18,
              ),//textStyle
            ),//Text
          ),//Container
        ),//Center
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: ()=> scanQr(),
            child: Icon(
              Icons.camera,
            )//icon
          ),//floatingActionButton
      ),//Scaffold
    );//MaterialApp
  }
} 