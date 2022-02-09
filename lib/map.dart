import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'onroad_model.dart';
//import 'package:permission/permission.dart';

class NewP extends StatefulWidget {
  const NewP({ Key? key }) : super(key: key);

  @override
  _NewPState createState() => _NewPState();
}

class _NewPState extends State<NewP> {
  // ignore: unused_field
  late GoogleMapController _controller;

  List<Marker> allMarker = [];
  @override
  void initState(){
    super.initState();
    garages.forEach((element) {
      allMarker.add(Marker(
        markerId: MarkerId(element.gname),
        draggable: false,
        infoWindow: InfoWindow(title:element.gname, snippet: element.address),
        position: element.locationCoords
        ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('TSCZ ONROAD VEHICLE ASSIST..'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation:0.0,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width ,
            child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(-19.416665 ,29.83333), zoom: 12.0),
                   markers: Set.from(allMarker),
                  onMapCreated: mapCreated,
            ),
          )
        ],
      ),
      
    );
  }
  void mapCreated(controller){
    setState(() {
      _controller = controller;
    });
  }
}