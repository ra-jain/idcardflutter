import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile/dataobjects.dart';
// Widgets
import 'package:profile/widgets/CustomInput.dart';
import 'package:profile/widgets/Profile.dart';

class ProfileCreate extends StatefulWidget {
  // const ProfileCreate({Key key}) : super(key: key);
  @override
  _ProfileCreateState createState() => _ProfileCreateState();
}

class _ProfileCreateState extends State<ProfileCreate> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CustomInput(
              text: 'Name',
              onsave: (String arg) {
                custom.setName(arg);
              },
              validator: custom.validateName,
            ),
            CustomInput(
              text: 'Batch',
              onsave: custom.setBatch,
              validator: custom.validateBatch,
            ),
            CustomInput(
              text: 'Address',
              onsave: custom.setAddress,
              validator: custom.validateAddress,
            ),
            CustomInput(
              text: 'Phone Number',
              onsave: custom.setPhoneNumber,
              validator: custom.validatePhoneNumber,
            ),
            CustomInput(
              text: 'Image URL',
              onsave: custom.setImagesrc,
              validator: custom.validateImagesrc,
            ),
            TextButton(
                onPressed: () {
                  if (_formkey.currentState.validate()) {
                    _formkey.currentState.save();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Scaffold(
                          appBar: AppBar(
                            title: Text('College ID '),
                          ),
                          body: Profile(
                            name: custom.name,
                            address: custom.address,
                            batch: custom.batch,
                            phoneNumber: custom.phoneNumber,
                            imagesrc: custom.imagesrc,
                          ),
                        ),
                      ),
                    );
                  }
                },
                child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}

// Route _route() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) =>
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       return child;
//     },
//   );
// }
