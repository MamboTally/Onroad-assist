import 'package:google_maps_flutter/google_maps_flutter.dart';


class Onroad {
  String gname;
  String address;
  String destription;
 // String thumbNail;
  LatLng locationCoords;

  Onroad(
  {required this.gname, 
  required this.address,
  required this.destription, 
  //this.thumbNail, 
  required this.locationCoords});

}
final List<Onroad> garages = [
  Onroad(
    gname: '+263 778 732 123',
    address: '18 W Lobengula',
    destription: 'A garage that offers panel betting',
    locationCoords: LatLng(-19.536665 ,29.45333)
 ),
  Onroad(
    gname: '+263 718 906 785',
    address: '18 W 35th st',
    destription: 'Auto',
    locationCoords: LatLng(-19.321678 ,29.78933)
 ),
];