import 'package:flutter/material.dart';
import 'package:teste1/tela1.dart';
import 'package:teste1/tela2.dart';
import 'package:teste1/tela3.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const Tela1(),
    const Tela2(),
    const Tela3(),
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white70,
        selectedItemColor: Colors.green[900],
        unselectedItemColor: Colors.teal[300],
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Raio' ,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Flecha|Corda' ,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Corda|Arco|Ângulo' ,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );

  }
}
