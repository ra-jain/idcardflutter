import 'package:flutter/material.dart';
// import 'package:profile/rakshit.dart';

void main() {
  runApp(Main());
}

class Person {
  final String name;
  final String address;
  final String batch;
  final String phoneNumber;
  final String imagesrc;
  Person(
      {this.name, this.address, this.phoneNumber, this.batch, this.imagesrc});
}

var rakshit = Person(
  name: 'Rakshit R. Jain',
  address: 'B-403, Golden Pearl Apartment, Near Shanti Park Society, Bharuch',
  batch: 'BTECH-CSE-2019-23',
  phoneNumber: '8780871688',
  imagesrc:
      'https://www.pngitem.com/pimgs/m/192-1926160_transparent-ajax-png-anime-profile-png-download.png',
);
var rain = Person(
  name: 'Rain Jain',
  address: 'B-403, Golden Pearl Apartment, Near Shanti Park Society, Bharuch',
  batch: 'BTECH-CSE-2019-23',
  phoneNumber: '8780871688',
  imagesrc:
      'https://cutewallpaper.org/21/anime-profile-pictures-boy/cartoon-and-anime-profile-pics-toon.pfps-Instagram-Profile-.jpg',
);
var alkiris = Person(
  name: 'Alooo kiris',
  address: 'B-403, Golden Pearl Apartment, Near Shanti Park Society, Bharuch',
  batch: 'BTECH-CSE-2019-23',
  phoneNumber: '8780871688',
  imagesrc:
      'https://cutewallpaper.org/21/anime-profile-pictures-boy/cartoon-and-anime-profile-pics-toon.pfps-Instagram-Profile-.jpg',
);
var custom;
var arrayofPerson = [rakshit, rain, alkiris, custom];

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
            Profile(
              name: arrayofPerson[2].name,
              batch: arrayofPerson[2].batch,
              address: arrayofPerson[2].address,
              phoneNumber: arrayofPerson[2].phoneNumber,
              imagesrc: arrayofPerson[2].imagesrc,
            ),
            ProfileCreate()
          ],
          onPageChanged: (page) {
            setState(() {
              _selectedIndex = page;
            });
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          // currentIndex: 0,
          onTap: onTabTapped,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box,
                color: Colors.grey[850],
              ),
              label: 'rakshit',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box,
                color: Colors.grey[850],
              ),
              label: 'rain',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box,
                color: Colors.grey[850],
              ),
              label: 'alkiris',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_add,
                  color: Colors.grey[850],
                ),
                label: 'Add User'),
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  //const Profile({Key key}) : super(key: key);
  final String name;
  final String address;
  final String phoneNumber;
  final String batch;
  final String imagesrc;
  Profile(
      {this.name, this.address, this.phoneNumber, this.batch, this.imagesrc});
  @override
  Widget build(BuildContext context) {
    return Container(
      //child: child,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'MAHAKAL INSTITUTE OF',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
          Text(
            'TECHNOLOGY',
            style: TextStyle(
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
          Center(
            child: CircleAvatar(
              backgroundImage: NetworkImage(imagesrc),
              radius: 150.0,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage('assets/images/MITicon.jpg'),
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
              ),
            ),
            child: Column(
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(fontSize: 24.0),
                ),
                Text(
                  batch,
                  style: TextStyle(fontSize: 24.0),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  address,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  phoneNumber,
                  style: TextStyle(fontSize: 20.0),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileCreate extends StatefulWidget {
  // const ProfileCreate({Key key}) : super(key: key);
  @override
  _ProfileCreateState createState() => _ProfileCreateState();
}

String name;
String address;
String batch;
String phoneNumber;
String imagesrc;

class _ProfileCreateState extends State<ProfileCreate> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Name'),
            TextFormField(onSaved: (input) {
              name = input;
            }),
            Text('Address'),
            TextFormField(onSaved: (input) {
              address = input;
            }),
            Text('Batch'),
            TextFormField(onSaved: (input) {
              batch = input;
            }),
            Text('Phone Number'),
            TextFormField(onSaved: (input) {
              phoneNumber = input;
            }),
            Text('Image location'),
            TextFormField(onSaved: (input) {
              imagesrc = input;
            }),
            TextButton(
                onPressed: () {
                  _formkey.currentState.save();
                  custom = Person(
                      name: name,
                      address: address,
                      batch: batch,
                      phoneNumber: phoneNumber,
                      imagesrc: imagesrc);
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new Scaffold(
                              body: Profile(
                                name: custom.name,
                                address: custom.address,
                                batch: custom.batch,
                                phoneNumber: custom.phoneNumber,
                                imagesrc: custom.imagesrc,
                              ),
                            )),
                  );
                },
                child: Text('Hello'))
          ],
        ),
      ),
    );
  }
}
