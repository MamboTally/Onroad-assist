import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        
        padding: EdgeInsets.only(left: 15.0),
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: GestureDetector(child: Icon(
                  
                  Icons.location_on,
                  color: Color(0xFFEEB139),
                  size: 35.0,
                  
                ), onTap: (){
                         Navigator.of(context).pushNamed('/NewP');
                       },
                ) 
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  'Onroad Assist',
                  style: TextStyle(
                    color: Color(0xFF434C68).withOpacity(0.7),
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cabin',
                    letterSpacing: 0.05
                  ),
                ),
              ),
              SizedBox(height: 20.0),
               Image.asset('assets/porsche.png', fit: BoxFit.cover, 
               height: 175.0, width: MediaQuery.of(context).size.width - 30.0),
              Text('Code 54678',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontSize: 30.0,
                fontWeight: FontWeight.bold
              ),
              ),
              Text('Mobile banking for TSCZ',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF434C68)
              ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 0.75,
                width: MediaQuery.of(context).size.width - 30.0,
                color: Color(0xFF434C68).withOpacity(0.4),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.card_travel, color: Color(0xFF434C68).withOpacity(0.4)),
                        SizedBox(height: 5.0),
                        Text('19/24',
                        style: TextStyle(
                            fontFamily: 'Oswald',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      children: <Widget>[
                        Icon(Icons.timer, color: Color(0xFF434C68).withOpacity(0.4)),
                        SizedBox(height: 5.0),
                        Text('3.2',
                        style: TextStyle(
                            fontFamily: 'Oswald',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                          ),
                        )

                      ],
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      children: <Widget>[
                        Icon(Icons.network_cell, color: Color(0xFF434C68).withOpacity(0.4)),
                        SizedBox(height: 5.0),
                        Text('443',
                        style: TextStyle(
                            fontFamily: 'Oswald',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                          ),
                        )

                      ],
                    )
                  ],
                
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 0.75,
                width: MediaQuery.of(context).size.width - 30.0,
                color: Color(0xFF434C68).withOpacity(0.4),
              ),
              SizedBox(height: 10.0),
               SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
             child: Row(
                children: <Widget>[
                  //Icon(Icons.refresh, size: 35.0, color: Color(0xFF434C68).withOpacity(0.4)),
                  SizedBox(width: 10.0),
                  Text('NOTICES AND SERVICES',
                  style: TextStyle(
                    color: Color(0xFF434C68).withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                    fontFamily: 'Oswald'
                  ),),
                  SizedBox(width: 80.0),
                 GestureDetector(
                   child: Icon(
                     Icons.arrow_forward, size: 35.0, color: Color(0xFF434C68).withOpacity(0.4)
                     ),onTap: (){
                         Navigator.of(context).pushNamed('/Notice');
                       },
                      ), 
                ],
              )
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.more, color: Colors.grey, size: 25.0)),
            Tab(icon: Icon(Icons.play_arrow, color: Colors.grey, size: 25.0)),
            Tab(icon: Icon(Icons.navigation, color: Colors.black, size: 25.0)),
          ]
        ),
      ),
    );
  }
}