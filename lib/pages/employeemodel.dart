import 'package:cloud_firestore/cloud_firestore.dart';

class EmployeeModel {
  String? docId;
  String? email;
  String? city;
  String? phonemumber;
  String? username;
  String? password;
  String? confirmpass;

  EmployeeModel({this.docId, this.email, this.city, this.phonemumber, this.username, this.password, this.confirmpass});

  EmployeeModel.fromMap(DocumentSnapshot data) {
    docId = data.id;
    email = data["Email"];
    city = data["City"];
    phonemumber = data["Phonemumber"];
    username= data["Username"];
    password = data["Password"];
    confirmpass = data["Confirmpass"];
  }
}