import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Tela1());
}

class Tela1 extends StatelessWidget {
  const Tela1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Page(title: 'Raio'),
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
      body: Center(
        child: Container(
          constraints: const BoxConstraints(
              maxHeight: double.infinity, maxWidth: double.infinity),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.green, Colors.white70]),
          ),
          child: Column(
            crossAxisAlignment: (CrossAxisAlignment.start),
            mainAxisAlignment: (MainAxisAlignment.start),
            children: [
              Row(
                crossAxisAlignment: (CrossAxisAlignment.start),
                mainAxisAlignment: (MainAxisAlignment.start),
                children: <Widget>[
                  const Image(
                    image: AssetImage('images/chord.png'),
                  ),
                  Column(
                    verticalDirection: (VerticalDirection.down),
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Radio(
                              value: 1,
                              groupValue: _checked,
                              onChanged: (value) {
                                setState(() {
                                  _checked = 1;
                                });
                              }),
                          const Text("R,H",
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
                          const Text("R,C",
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
                          const Text("R,L",
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
                          const Text("R,A",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: 'Futura',
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
                          const Text("R,a",
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
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 8.0),
                child: Row(
                  children: [
                    Column(
                        verticalDirection: VerticalDirection.down,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text("data"),
                          Text("data"),
                          Text("data"),
                          Text("data"),
                          Text("data"),
                        ]),
                    Column(
                        verticalDirection: VerticalDirection.down,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          SizedBox(
                            width: 100.0,
                            height: 20.0,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter value'),
                            ),
                          ),
                          SizedBox(
                            width: 100.0,
                            height: 20.0,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter value'),
                            ),
                          ),
                          Text(""),
                          Text(""),
                          Text(""),
                        ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
