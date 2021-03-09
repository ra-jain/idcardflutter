import 'package:flutter/material.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  //const Main({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          centerTitle: true,
          title: Text('College Digital ID'),
        ),
        body: Profile(
          name: 'Rakshit R. Jain',
          address:
              'B-403, Golden Pearl Apartment, Near Shanti Park Society, Bharuch',
          batch: 'BTECH-CSE-2019-23',
          phoneNumber: '8780871688',
          imagesrc:
              'https://www.pngitem.com/pimgs/m/192-1926160_transparent-ajax-png-anime-profile-png-download.png',
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          ProfileImage(imagesrc),
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

class ProfileImage extends StatelessWidget {
  final String imagesrc;
  ProfileImage(this.imagesrc);
  //const ProfileImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Image(
        image: NetworkImage(imagesrc),
      ),
      borderRadius: BorderRadius.circular(100),
    );
  }
}
