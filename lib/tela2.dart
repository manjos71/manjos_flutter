import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const Tela2());
}

class Tela2 extends StatelessWidget {
  const Tela2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const Page(title: 'Flecha|corda'),
    );
  }
}

class Page extends StatefulWidget {
  const Page({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  int _checked = 0;

  void _state(int checked) {
    setState(() {
      _checked = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: (true),
        backgroundColor: Colors.teal,
      ),
      resizeToAvoidBottomInset: false,

      body: Center(
        widthFactor: 1,
        heightFactor: 1,
        child: Container(
          clipBehavior: Clip.antiAlias,
          constraints: const BoxConstraints(
              maxHeight: double.infinity, maxWidth: double.infinity),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.deepOrangeAccent, Colors.white70]),
          ),
          child: Column(
          crossAxisAlignment: (CrossAxisAlignment.center),
          mainAxisAlignment: (MainAxisAlignment.spaceBetween),
          children: [
            Row(
            crossAxisAlignment: (CrossAxisAlignment.start),
            mainAxisAlignment: (MainAxisAlignment.spaceEvenly),
            children: <Widget>[
              const Image(
                image: AssetImage('images/chord.png'),

              ),
              Column(
              verticalDirection: (VerticalDirection.down),
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Radio(
                        value: 1,
                        groupValue: _checked,
                        onChanged: (value) {
                          setState(() {
                            _checked = 1;
                          });
                        }),
                    const Text("H,C",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Roboto',
                            fontStyle: FontStyle.normal))
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Radio(
                        value: 2,
                        groupValue: _checked,
                        onChanged: (value) {
                          setState(() {
                            _checked = 2;
                          });
                        }),
                    const Text("H,L",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Roboto',
                            fontStyle: FontStyle.normal))
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Radio(
                      value: 3,
                      groupValue: _checked,
                      onChanged: (value) {
                        setState(() {
                          _checked = 3;
                        });
                      },
                    ),
                    const Text("H,A",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Roboto',
                            fontStyle: FontStyle.normal))
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Radio(
                      value: 4,
                      groupValue: _checked,
                      onChanged: (value) {
                        setState(() {
                          _checked = 4;
                        });
                      },
                    ),
                    const Text("H,a",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Future',
                          fontStyle: FontStyle.normal,
                        ))
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Radio(
                      value: 5,
                      groupValue: _checked,
                      onChanged: (value) {
                        setState(() {
                          _checked = 5;
                        });
                      },
                    ),
                    const Text("C,L",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontStyle: FontStyle.normal,
                            backgroundColor: Colors.transparent))
                  ],
                ),
              ],
              ),
            ],
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children:[Table(
                      border: null,
                  /*border: TableBorder.all(),*/
                  columnWidths: const <int, TableColumnWidth>{
                    0: FixedColumnWidth(75),
                    1: FixedColumnWidth(100),
                  },
                  children: const <TableRow>[
                    TableRow(
                      children: <Widget>[
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text("data"),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: TextField(
                            expands: false,
                            cursorHeight: 20,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: 'Enter value'),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: <Widget>[
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text("data"),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: TextField(
                            expands: false,
                            cursorHeight: 20,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: 'Enter value'),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                    children: <Widget>[
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: SizedBox( child: Text("data"),height: 30.0,width: 15.0,),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: SizedBox( child: Text("value"),height: 30.0,width: 15.0,),
                      ),
                    ],
                    ),
                    TableRow(
                    children: <Widget>[
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: SizedBox( child: Text("data"),height: 30.0,width: 15.0,),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: SizedBox( child: Text("value"),height: 30.0,width: 15.0,),
                      ),
                    ],
                    ),
                    TableRow(
                      children: <Widget>[
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: SizedBox( child: Text("data"),height: 30.0,width: 15.0,),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: SizedBox( child: Text("value"),height: 30.0,width: 15.0,),
                        ),
                      ],
                    ),
                  ],
                ),],
                ),
              ),
            ),/* */
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(color: Colors.redAccent, width: 2.0)
                      ),),),
                  onPressed: () { },
                  child: const Text('Clear'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(color: Colors.redAccent, width: 2.0)
                      ),),),
                  onPressed: () { },
                  child: const Text('Execute'),
                ),
              ),
            ],
            ),
          ],
          ),
        ),
    ),
      );
  }

  onPressed() {}
}
