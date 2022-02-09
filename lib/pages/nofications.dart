import 'package:flutter/material.dart';

class Notice extends StatefulWidget {
  const Notice({ Key? key }) : super(key: key);

  @override
  _NoticeState createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
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

      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(  
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                //Text('Hello World', style: TextStyle(fontSize: 20),),
                Text('Notifications', style: TextStyle(decoration: TextDecoration.underline, fontSize: 30, fontWeight: FontWeight.bold, backgroundColor: Colors.grey, color: Colors.black,),),
                // Text('This is Italic Text', style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),),
                // Text('This is Colored Text', style: TextStyle(fontSize: 20, color: Colors.pink),),
                // Text('Hello World Custom Fonts', style: TextStyle(fontSize: 20, fontFamily: 'Lacquer'),),
                // Container(
                //   padding: EdgeInsets.all(20),
                //   child: Text(
                //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                //      textAlign: TextAlign.justify,           
                //   ),
                // )
                

              ],
            ),
            ),
          
            
            ),
             Container(  
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //Text('Hello World', style: TextStyle(fontSize: 20),),
                //Text('Notifications', style: TextStyle(decoration: TextDecoration.underline, fontSize: 20, fontWeight: FontWeight.bold, backgroundColor: Colors.grey, color: Colors.black,),),
                // Text('This is Italic Text', style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),),
                 Text('1. You need to regularly check and change your car’s oil to ensure smooth running of the vehicle ', style: TextStyle(fontSize: 15, color: Colors.black),),
                  Text('2. Changing a flat tire doesn’t have to be a big deal and could actually be a lifesaving skill to learn.  ', style: TextStyle(fontSize: 15, color: Colors.black),),
                  Text('3. They are the tiny devices inside the cylinder that create sparks to ignite the gasoline, ultimately powering your vehicle.  ', style: TextStyle(fontSize: 15, color: Colors.black),),
                  Text('4. Your battery shows signs that it might need replacement and you must know how', style: TextStyle(fontSize: 15, color: Colors.black),),
                  Text('5. Windshield wipers are one of the least-appreciated parts of your car’s safety system ', style: TextStyle(fontSize: 15, color: Colors.black),),
                  Text('6. Air filters are one of the most overlooked parts of your car. ', style: TextStyle(fontSize: 15, color: Colors.black),),
                 Text('Drive safe and try to reduce onroad car accidents. Here is some of our services (Automative mechanics, Diesel Mechanics,  Motorcycle Mechanic, Small Engine Mechanics etc)', style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),),
                // Text('Hello World Custom Fonts', style: TextStyle(fontSize: 20, fontFamily: 'Lacquer'),),
                // Container
                //   padding: EdgeInsets.all(20),
                //   child: Text(
                //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur snt occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                //      textAlign: TextAlign.justify,           
                //   ),
                // )
                

              ],
            ),
            ),
          
        ],
      ),
    );
  }
}