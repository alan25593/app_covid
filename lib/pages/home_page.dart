import 'package:flutter/material.dart';
import 'package:vacuapp/pages/vacuna_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Container margenAncho = Container(
    width: 10,
  );
  Container margenAlto = Container(
    height: 10,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fake QRvid '),
      ),
      body: Column(
        children: [
          margenAlto,
          margenAlto,
          _titulo(),
        ],
      ),
    );
  }

  _titulo() {
    return Card(
      margin: EdgeInsets.only(right: 15, left: 15),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.coronavirus,
              color: Colors.pink,
            ),
            title: Text(
              'Ver certificado',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 19),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => VacuPage()));
            },
          ),
        ],
      ),
    );
  }
}
