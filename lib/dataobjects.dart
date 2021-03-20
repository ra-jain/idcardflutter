class Person {
  String name;
  String address;
  String batch;
  String phoneNumber;
  String imagesrc;
  Person(
      {this.name, this.address, this.phoneNumber, this.batch, this.imagesrc});

  String validateName(String text) {
    if (text.isEmpty) {
      return 'Enter your name';
    } else if (RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]').hasMatch(text)) {
      return 'Enter a valid name';
    } else {
      return null;
    }
  }

  String validateAddress(String text) {
    if (text.isEmpty) {
      return 'Enter your Address';
    } else {
      return null;
    }
  }

  String validateBatch(String text) {
    if (text.isEmpty) {
      return 'Enter your batch';
    } else if (!RegExp('[a-zA-Z]*-[a-zA-Z]*-[0-9]{4}-[0-9]{2}')
        .hasMatch(text)) {
      return 'Enter a valid batch';
    } else {
      return null;
    }
  }

  String validatePhoneNumber(String text) {
    if (text.isEmpty) {
      return 'Enter a number';
    } else if (!RegExp('[0-9]{10}').hasMatch(text)) {
      return 'Enter a valid phone number';
    } else {
      return null;
    }
  }

  String validateImagesrc(String text) {
    if (text.isEmpty) {
      return 'Enter a link for an image';
    } else {
      return null;
    }
  }

  void setName(String text) {
    this.name = text;
  }

  void setAddress(String text) {
    this.address = text;
  }

  void setBatch(String text) {
    this.batch = text;
  }

  void setPhoneNumber(String text) {
    this.phoneNumber = text;
  }

  void setImagesrc(String text) {
    this.imagesrc = text;
  }
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
var hello = Person(
  name: 'hello',
  address: 'B-403, Golden Pearl Apartment, Near Shanti Park Society, Bharuch',
  batch: 'BTECH-CSE-2019-23',
  phoneNumber: '8780871688',
  imagesrc:
      'https://cutewallpaper.org/21/anime-profile-pictures-boy/cartoon-and-anime-profile-pics-toon.pfps-Instagram-Profile-.jpg',
);

var arrayofPerson = [rakshit, rain, alkiris, hello];
var custom = Person();
