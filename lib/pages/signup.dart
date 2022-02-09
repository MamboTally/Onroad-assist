import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tscz/homecontroller.dart';
import 'package:firebase_core/firebase_core.dart';

class SignupView extends GetView<HomeController> {
  final HomeController homeController = Get.put(HomeController());
  get docId => null;

  get addEditFlag => null;


  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('TSCZ ONROAD VEHICLE ASSIST..'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation:0.0,
      ),
      backgroundColor: Colors.grey,
      
      body: Center(
        child: SingleChildScrollView(
          child:
          Container(
            
            child: Stack(
              children: <Widget> [
                Container(
                  padding: EdgeInsets.fromLTRB(95.0, 5.0, 20,0, ),
                   child:  Text(
                    'SIGNUP',
                     style: TextStyle(
                     fontSize: 40.0, 
                     fontWeight: FontWeight.bold, 
                     ),
                   ),
                ),
          Container(
           padding: EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
             child: Column(
               children: <Widget>[
                 TextField(
                   decoration: InputDecoration(
                     labelText: 'EMAIL',
                     labelStyle: TextStyle(fontWeight: FontWeight.bold, 
                     color: Colors.white
                     ),
                     focusedBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.blueGrey) 
                     )
                   ),
                   controller: controller.emailController,
                 ),
                 SizedBox(height: 5.0),
                  TextField(
                   decoration: InputDecoration(
                     labelText: 'USERNAME',
                     labelStyle: TextStyle(fontWeight: FontWeight.bold, 
                     color: Colors.white
                     ),
                     focusedBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.blueGrey) 
                     )
                   ),
                   controller: controller.usernameController,
                 ),
                  SizedBox(height: 5.0),
                  TextField(
                   decoration: InputDecoration(
                     labelText: 'PHONE NUMBER',
                     labelStyle: TextStyle(fontWeight: FontWeight.bold, 
                     color: Colors.white
                     ),
                     focusedBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.blueGrey) 
                     )
                   ),
                   controller: controller.phonemumberController,
                 ),
                 SizedBox(height: 5.0),
                  TextField(
                   decoration: InputDecoration(
                     labelText: 'CITY',
                     labelStyle: TextStyle(fontWeight: FontWeight.bold, 
                     color: Colors.white
                     ),
                     focusedBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.blueGrey) 
                     )
                   ),
                   controller: controller.cityController,
                 ),
                  SizedBox(height: 5.0),
                 TextField(
                   decoration: InputDecoration(
                     labelText: 'PASSWORD',
                     labelStyle: TextStyle(fontWeight: FontWeight.bold, 
                     color: Colors.white
                     ),
                      focusedBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.blueGrey) 
                     )
                   ),
                   controller: controller.passwordController,
                 ),
                 SizedBox(height: 5.0),
                 TextField(
                   decoration: InputDecoration(
                     labelText: 'CONFIRM PASSWORD',
                     labelStyle: TextStyle(fontWeight: FontWeight.bold, 
                     color: Colors.white
                     ),
                      focusedBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.blueGrey) 
                     )
                   ),
                   controller: controller.confirmpassController,
                 ),
                 SizedBox(height: 15.0), 
                 Container(
                   height: 40.0,
                   child: Material(
                     borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.grey[850],
                      color: Colors.blueGrey,
                      elevation: 7.0,
                      child: GestureDetector(
                        
                        onTap: (){
                            controller.saveUpdateEmployee(
                            controller.emailController.text,
                            controller.passwordController.text,
                            controller.cityController.text,
                            controller.phonemumberController.text,
                            controller.usernameController.text,
                            controller.confirmpassController.text,
                            docId!,
                            addEditFlag!);
                        },
                        child: Center(
                          child: Text(
                            'SIGNUP',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                              ),
                          ),),
                      ),
                   ),
                 ),
              ], 
            ),
           ),
          ],
         ),
        ),
        )
      )
    );
    
  }
}
 displayDeleteDialog(String docId) {
    Get.defaultDialog(
      title: "Delete Employee",
      titleStyle: TextStyle(fontSize: 20),
      middleText: 'Are you sure to delete employee ?',
      textCancel: "Cancel",
      textConfirm: "Confirm",
      confirmTextColor: Colors.black,
      onCancel: () {},
      onConfirm: () {
        var controller;
        controller.deleteData(docId);
      },
    );
    // ignore: unused_element
    Future<DocumentSnapshot> getData() async {
    await Firebase.initializeApp();
    return await FirebaseFirestore.instance
        .collection("employees")
        .doc("docID")
        .get();
  }
  }

