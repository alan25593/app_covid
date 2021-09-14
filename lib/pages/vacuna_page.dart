import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'certificado_page.dart';

class VacuPage extends StatefulWidget {
  @override
  State<VacuPage> createState() => _VacuPageState();
}

class _VacuPageState extends State<VacuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mis documentos'),
      ),
      body: ExpandableTheme(
        data: const ExpandableThemeData(
          iconColor: Colors.grey,
          useInkWell: true,
        ),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            Card1(),
            Card2(),
          ],
        ),
      ),
    );
  }
}

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Container(
                  child: _titulo(context),
                ),
                collapsed: Container(),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[_datos(context)],
                ),
                builder: (_, collapsed, expanded) {
                  return Container(
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Container(
                  child: _titulo2(context),
                ),
                collapsed: Container(),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[],
                ),
                builder: (_, collapsed, expanded) {
                  return Container(
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

_titulo(context) {
  return Container(
    child: Column(
      children: [
        ListTile(
          leading: Icon(
            FontAwesomeIcons.solidAddressCard,
            size: 20,
            color: Colors.pink,
          ),
          title: Text(
            'Certificado vacunación Covid 19',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
      ],
    ),
  );
}

_titulo2(context) {
  return Container(
    child: Column(
      children: [
        ListTile(
          leading: Icon(
            FontAwesomeIcons.solidAddressCard,
            size: 20,
            color: Colors.blue,
          ),
          title: Text(
            'CUIL',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
      ],
    ),
  );
}

// CAMBIAR LINK QR

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

_body(context) {
  return Card(
    margin: EdgeInsets.only(right: 15, left: 15),
    elevation: 1,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Column(
      children: [
        _fechaAct(),
        Container(height: 10),
        _qr(),
        Container(height: 30),
        _datosExtra(context),
      ],
    ),
  );
}

_fechaAct() {
  return Center(
    child: Container(
      child: Text(
        'Última actualización 29/6/2021 14:27 hs',
        style: TextStyle(color: Colors.grey),
      ),
    ),
  );
}

_datosExtra(context) {
  return Column(
    children: [
      Row(
        children: [
          Container(
            width: 60,
          ),
          Expanded(
              child: Text(
            'Estado',
            style: TextStyle(color: Colors.grey),
          )),
          Container(),
          Expanded(
              child: Text(
            'Fecha de aplicación',
            style: TextStyle(color: Colors.grey),
          )),
          Container(
            width: 40,
          ),
        ],
      ),
      Container(
        height: 5,
      ),
      Row(
        children: [
          Container(
            width: 60,
          ),
          Expanded(
              child: Container(
            child: Row(
              children: [
                Icon(
                  Icons.circle,
                  size: 8,
                  color: Colors.green,
                ),
                Text(
                  'Aplicada',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )),
          Container(),
          Expanded(
              child: Text(
            '29/6/2021',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          )),
          Container(
            width: 40,
          ),
        ],
      ),
      Container(
        height: 20,
      ),
      Container(
        child: Row(
          children: [
            Container(
              width: 60,
            ),
            Text(
              'Dosis',
              style: TextStyle(color: Colors.grey),
            ),
            Expanded(child: Container())
          ],
        ),
      ),
      Container(
        height: 5,
      ),
      Container(
        child: Row(
          children: [
            Container(
              width: 60,
            ),
            Text(
              '1',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(child: Container())
          ],
        ),
      ),
      Container(
        height: 15,
      ),
      Container(
        child: Row(
          children: [
            Container(
              width: 60,
            ),
            Text(
              'Ministerio de Salud',
              style: TextStyle(
                fontSize: 23,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(child: Container())
          ],
        ),
      ),
      Container(
        height: 10,
      ),
      _botonazul(context)
    ],
  );
}

_botonazul(context) {
  return RaisedButton(
    onPressed: () => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => CertificadoPage())),
    color: Colors.white,
    child: Container(
      width: 300,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.blue),
      child: Center(
        child: Text(
          'Ver certificado',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}

_info() {
  return Column(
    children: [
      Container(
        height: 10,
      ),
      Card(
        margin: EdgeInsets.only(right: 15, left: 15),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Text(
          'Datos suministrados por la jurisdicción que aplicó la vacuna.',
          style: TextStyle(color: Colors.grey),
        ),
      ),
      Container(
        height: 10,
      ),
    ],
  );
}

_info2() {
  return Column(
    children: [
      Container(
        height: 10,
      ),
      Card(
        margin: EdgeInsets.only(right: 15, left: 15),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Text(
          'Conocé más sobre el certificado de vacunación COVID 19',
          style: TextStyle(color: Colors.blue),
        ),
      ),
      Container(
        height: 10,
      ),
    ],
  );
}

_datos(context) {
  Container margenAlto = Container(
    height: 10,
  );
  return SingleChildScrollView(
    child: Column(
      children: [
        _body(context),
        margenAlto,
        _info(),
        margenAlto,
        _info2(),
        margenAlto
      ],
    ),
  );
}
