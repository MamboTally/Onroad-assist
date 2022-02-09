import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tscz/homecontroller.dart';


class Homeview extends GetView<HomeController> {
  final HomeController homeController = Get.put(HomeController());
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
            margin: EdgeInsets.fromLTRB(20.0, 30.0, 10.0, 60.0),
            child: Form(
               key: controller.loginFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Stack(
                      children: <Widget> [
                Container(
                  padding: EdgeInsets.fromLTRB(60.0, 10.0, 0.0, 0.0),
                   child:  Text(
                    'Welcome',
                     style: TextStyle(
                     fontSize: 50.0, 
                     fontWeight: FontWeight.bold, 
                     ),
                   ),
                ),
          Container(
           padding: EdgeInsets.only(top: 100.0, left: 20.0, right: 20.0),
             child: Column(
               children: <Widget>[
                 TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'EMAIL',
                      prefixIcon: Icon(Icons.email),
                    ),
                    keyboardType: TextInputType.emailAddress,
                      controller: controller.emailController,
                     onSaved: (value) {
                        controller.email = value!;
                     },
                      validator: (value) {
                       return controller.validateEmail(value!);
                      },
                     ),
                   
                 
                 SizedBox(height: 20.0),
                 TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'PASSWORD',
                      prefixIcon: Icon(Icons.lock),
                    ),
                      keyboardType: TextInputType.visiblePassword,
                   obscureText: true,
                      controller: controller.passwordController,
                     onSaved: (value) {
                       controller.password = value!;
                     },
                     validator: (value) {
                       return controller.validatePassword(value!);
                     },
                   ),
                 SizedBox(height: 21.0),
                 
                 Container(
                   height: 40.0,
                   child: Material(
                     borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.grey[850],
                      color: Colors.blueGrey,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/MyHomePage');
                        },
                        child: Center(
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                              ),
                          ),),
                      ),
                   ),
                 ),
                 SizedBox(height: 15.0,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget> [
                     Text(
                       'Are you registered ?',
                       style: TextStyle(color: Colors.grey[850] ),
                     ),
                     SizedBox(width: 5.0,),
                     InkWell(
                       onTap: (){
                         Navigator.of(context).pushNamed('/sigupview');
                       },
                       child: Text('Register',
                       style: TextStyle(
                         color: Colors.blueGrey,
                         fontWeight: FontWeight.bold,
                         decoration: TextDecoration.underline 
                       ),
                       ),
                       
                     )
                   ],
                   )
              ],
               
            ),
            
           ),
           
          ],
              ),
              
         ),
        ),
        )
        
       
      )
    );
  }
    
  }


// class HomeController {
//   get loginFormKey => null;

//   get emailController => null;

//   set email(String email) {}
// }



