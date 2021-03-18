import 'package:flutter/material.dart';

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
