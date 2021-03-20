// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:profile/dataobjects.dart';

// Importing Widgets
import 'package:profile/Widgets/Profile.dart';
import 'package:profile/Widgets/ProfileCreate.dart';

void main() {
  runApp(Main());
}

class Main extends StatefulWidget {
  //const Main({Key key}) : super(key: key);
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  int index = 0;
  void onTabTapped(int ind) {
    setState(() {
      _selectedIndex = ind;
    });
    _pageController.animateToPage(ind,
        duration: Duration(milliseconds: 500), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          centerTitle: true,
          title: Text('College Digital ID'),
        ),
        body: PageView(
          controller: _pageController,
          children: <Widget>[
            Profile(
              name: arrayofPerson[0].name,
              batch: arrayofPerson[0].batch,
              address: arrayofPerson[0].address,
              phoneNumber: arrayofPerson[0].phoneNumber,
              imagesrc: arrayofPerson[0].imagesrc,
            ),
            Profile(
              name: arrayofPerson[1].name,
              batch: arrayofPerson[1].batch,
              address: arrayofPerson[1].address,
              phoneNumber: arrayofPerson[1].phoneNumber,
              imagesrc: arrayofPerson[1].imagesrc,
            ),
            ListView.builder(
              itemCount: arrayofPerson.length,
              itemBuilder: (context, position) {
                return ListTile(
                  title: Text(arrayofPerson[position].name),
                  onTap: () {
                    Navigator.push(
                        context,
                        // MaterialPageRoute(
                        //   builder: (context) => Scaffold(
                        //     appBar: AppBar(
                        //       backgroundColor: Colors.grey[800],
                        //       centerTitle: true,
                        //       title: Text('College Digital ID'),
                        //     ),
                        //     body: Profile(
                        //       name: arrayofPerson[position].name,
                        //       batch: arrayofPerson[position].batch,
                        //       address: arrayofPerson[position].address,
                        //       phoneNumber: arrayofPerson[position].phoneNumber,
                        //       imagesrc: arrayofPerson[position].imagesrc,
                        //     ),
                        //   ),
                        // ),
                        _route(position));
                  },
                );
              },
            ),
            ProfileCreate(),
          ],
          onPageChanged: (page) {
            setState(() {
              _selectedIndex = page;
            });
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          onTap: onTabTapped,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box,
              ),
              label: 'rakshit',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box,
              ),
              label: 'rain',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
              ),
              label: 'List',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_add,
                ),
                label: 'Add User'),
          ],
          selectedItemColor: Colors.red[700],
          unselectedItemColor: Colors.grey[850],
        ),
      ),
    );
  }
}

Route _route(hello) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        centerTitle: true,
        title: Text('College Digital ID'),
      ),
      body: Profile(
        name: arrayofPerson[hello].name,
        batch: arrayofPerson[hello].batch,
        address: arrayofPerson[hello].address,
        phoneNumber: arrayofPerson[hello].phoneNumber,
        imagesrc: arrayofPerson[hello].imagesrc,
      ),
    ),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(500.0, 9999.0);
      var end = Offset.zero;
      var curve = Curves.ease;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
