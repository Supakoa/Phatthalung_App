import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String userID;
  final String firstName;
  final String lastName;
  final String age;
  final String gender; 
  final String province; 
  final String email;
  final String profilePictureURL;

  User({
    this.userID,
    this.firstName,
    this.lastName,
    this.age,
    this.gender,  
    this.province,  
    this.email,
    this.profilePictureURL,
  });

  Map<String, Object> toJson() {
    return {
      'userID': userID,
      'firstName': firstName,
      'lastName': lastName,
      'age':age,
      'gender':gender,
      'province':province,
      'email': email == null ? '' : email,
      'profilePictureURL': profilePictureURL,
      'appIdentifier': 'flutter-onboarding'
    };
  }

  factory User.fromJson(Map<String, Object> doc) {
    User user = new User(
      userID: doc['userID'],
      firstName: doc['firstName'],
      lastName: doc['lastName'],
      age:doc['age'],
      gender:doc['gender'],
      province:doc['province'],
      email: doc['email'],
      profilePictureURL: doc['profilePictureURL'],
    );
    return user;
  }

  factory User.fromDocument(DocumentSnapshot doc) {
    return User.fromJson(doc.data);
  }
}
