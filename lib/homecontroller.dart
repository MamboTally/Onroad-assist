import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:tscz/CustomFullScreen.dart';
import 'package:tscz/CustomSnackBar.dart';
import 'package:tscz/pages/employeemodel.dart';

class HomeController extends GetxController{

   final GlobalKey<FormState>loginFormKey=GlobalKey<FormState>();

   late TextEditingController emailController,passwordController, cityController, phonemumberController, usernameController,  confirmpassController;
    var email='';
   var password='';
  

   FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
   late CollectionReference collectionReference;

  RxList<EmployeeModel> employees = RxList<EmployeeModel>([]);

  
  @override
  void onInit(){
    super.onInit();
    emailController=TextEditingController();
    passwordController=TextEditingController();
    cityController=TextEditingController();
    phonemumberController=TextEditingController();
    usernameController=TextEditingController();
    passwordController=TextEditingController();
    confirmpassController=TextEditingController();
    collectionReference = firebaseFirestore.collection("employees");
    employees.bindStream(getAllEmployees());
  }

  @override
  void onReady(){
    super.onReady();
  }
  @override
  void onClose(){
    emailController.dispose();
    passwordController.dispose();
    
  }
  String? validateEmail(String value){
    if (!GetUtils.isEmail(value))
    {
      return 'Provide valid Email';
    }
    return null;
  }
  String? validatePassword(String value){
    if (value.length < 6){
       return 'Password must be of 6 characters';
    }
    return null;
  }
  void checkLogin(){
    final isValid=loginFormKey.currentState!.validate();
    if(!isValid){
      return;
    }
    loginFormKey.currentState!.save();
  }
   void saveUpdateEmployee(
      String email, String username, String city, String phonenumber, String password, String confirmpass, String docId, int addEditFlag) {
    var formKey;
    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    formKey.currentState!.save();
    if (addEditFlag == 1) {
      CustomFullScreenDialog.showDialog();
      collectionReference
          .add({'email': email, 'username': username, 'city': city, 'phonenumber': phonenumber, 'password': password, 'confirmpass': confirmpass,}).whenComplete(() {
        CustomFullScreenDialog.cancelDialog();
        clearEditingControllers();
        Get.back();
        CustomSnackBar.showSnackBar(
            context: Get.context,
            title: "Employee Added",
            message: "Employee added successfully",
            backgroundColor: Colors.green);
      }).catchError((error) {
        CustomFullScreenDialog.cancelDialog();
        CustomSnackBar.showSnackBar(
            context: Get.context,
            title: "Error",
            message: "Something went wrong",
            backgroundColor: Colors.green);
      });
    } else if (addEditFlag == 2) {
      //update
      CustomFullScreenDialog.showDialog();
      collectionReference
          .doc(docId)
          .update({'email': email, 'username': username, 'city': city, 'phonenumber': phonenumber, 'password': password, 'confirmpass': confirmpass,}).whenComplete(() {
        CustomFullScreenDialog.cancelDialog();
        clearEditingControllers();
        Get.back();
        CustomSnackBar.showSnackBar(
            context: Get.context,
            title: "Employee Updated",
            message: "Employee updated successfully",
            backgroundColor: Colors.green);
      }).catchError((error) {
        CustomFullScreenDialog.cancelDialog();
        CustomSnackBar.showSnackBar(
            context: Get.context,
            title: "Error",
            message: "Something went wrong",
            backgroundColor: Colors.red);
      });
    }
  }

  Stream<List<EmployeeModel>> getAllEmployees() =>
      collectionReference.snapshots().map((query) =>
          query.docs.map((item) => EmployeeModel.fromMap(item)).toList());

  void deleteData(String docId) {
    CustomFullScreenDialog.showDialog();
    collectionReference.doc(docId).delete().whenComplete(() {
      CustomFullScreenDialog.cancelDialog();
      Get.back();
      CustomSnackBar.showSnackBar(
          context: Get.context,
          title: "Employee Deleted",
          message: "Employee deleted successfully",
          backgroundColor: Colors.green);
    }).catchError((error) {
      CustomFullScreenDialog.cancelDialog();
      CustomSnackBar.showSnackBar(
          context: Get.context,
          title: "Error",
          message: "Something went wrong",
          backgroundColor: Colors.red);
    });
  }

  void clearEditingControllers() {}

}