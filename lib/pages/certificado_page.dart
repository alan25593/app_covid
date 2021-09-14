import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:vacuapp/pages/vacuna_page.dart';

class CertificadoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [_pagina1(context), _pagina2(context), _pagina3(context)],
      ),
    );
  }

  //CAMBIAR LINK DEL QR Y FOTO PAGINA 1
  _qr() {
    String data = 'http://techlamp.000webhostapp.com/#/';
    return Center(
      child: QrImage(
        data: data,
        version: QrVersions.auto,
        size: 200,
      ),
    );
  }

  _pagina1(context) {
    return Stack(
      children: [
        _colorfondo(),
        Container(
          child: Row(
            children: [
              Expanded(
                flex: 9,
                child: Center(
                  child: Column(
                    children: [
                      Expanded(
                        child: Icon(Icons.expand_less),
                        flex: 1,
                      ),
                      Expanded(
                          child: Image.asset('assets/1.png',
                              width: 250, height: 450),
                          flex: 9),
                      Expanded(child: Icon(Icons.expand_more), flex: 1)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.topRight,
                  child: RotatedBox(
                      quarterTurns: 1,
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                          ),
                          ElevatedButton(
                              child: Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_back,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      'Volver',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.blue),
                                    ),
                                  ],
                                ),
                              ),
                              style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: BorderSide(
                                              color: Colors.white)))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VacuPage()));
                              }),
                          Container(
                            width: 5,
                          ),
                          Text('Credencial - Frente'),
                        ],
                      )),
                ),
                flex: 1,
              )
            ],
          ),
        ),
      ],
    );
  }

  _pagina2(context) {
    return Stack(
      children: [
        _colorfondo(),
        Container(
          child: Row(
            children: [
              Expanded(
                flex: 9,
                child: Center(
                  child: Column(
                    children: [
                      Expanded(
                        child: Icon(Icons.expand_less),
                        flex: 1,
                      ),
                      Expanded(
                          child: Image.asset('assets/2.png',
                              width: 250, height: 450),
                          flex: 9),
                      Expanded(child: Icon(Icons.expand_more), flex: 1)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.topRight,
                  child: RotatedBox(
                      quarterTurns: 1,
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                          ),
                          ElevatedButton(
                              child: Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_back,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      'Volver',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.blue),
                                    ),
                                  ],
                                ),
                              ),
                              style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: BorderSide(
                                              color: Colors.white)))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VacuPage()));
                              }),
                          Container(
                            width: 5,
                          ),
                          Text('Credencial - Dorso'),
                        ],
                      )),
                ),
                flex: 1,
              )
            ],
          ),
        ),
      ],
    );
  }

  _pagina3(context) {
    return Stack(
      children: [
        _colorfondo(),
        Container(
          child: Row(
            children: [
              Expanded(
                flex: 9,
                child: Center(
                  child: Column(
                    children: [
                      Expanded(
                        child: Icon(Icons.expand_less),
                        flex: 1,
                      ),
                      Expanded(child: _qr(), flex: 9),
                      Expanded(child: Icon(Icons.expand_more), flex: 1)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.topRight,
                  child: RotatedBox(
                      quarterTurns: 1,
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                          ),
                          ElevatedButton(
                              child: Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_back,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      'Volver',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.blue),
                                    ),
                                  ],
                                ),
                              ),
                              style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: BorderSide(
                                              color: Colors.white)))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VacuPage()));
                              }),
                          Container(
                            width: 5,
                          ),
                          Text('Credencial - QR'),
                        ],
                      )),
                ),
                flex: 1,
              )
            ],
          ),
        ),
      ],
    );
  }

  _colorfondo() {
    return Container(
        width: double.infinity, height: double.infinity, color: Colors.white);
  }
}
