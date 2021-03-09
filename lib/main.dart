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
          //body: ,
          ),
    );
  }
}

class Profile extends StatelessWidget {
  //const Profile({Key key}) : super(key: key);
  final String name;
  final String address;
  final int phoneNumber;
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
          ),
          Text(
            'TECHNOLOGY',
          ),
          ProfileImage(
              'https://www.pngitem.com/pimgs/m/192-1926160_transparent-ajax-png-anime-profile-png-download.png'),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage('assets/images/MITicon.jpg'),
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
              ),
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
