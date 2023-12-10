import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class favourites extends StatefulWidget {
  const favourites({super.key});

  @override
  State<favourites> createState() => _favouritesState();
}

class _favouritesState extends State<favourites> {

List<LatLng> polylineCoordinates=[];

void polypoints() async{
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult polyresult =await  polylinePoints.getRouteBetweenCoordinates("AIzaSyCxrusRZu_mRSywofkw7w4TsBrdrf_Nuss", PointLatLng(37.7749, -122.4194), PointLatLng(37.7749, -122.4133),);

    if (polyresult.points.isNotEmpty){
      polyresult.points.forEach((PointLatLng point) => polylineCoordinates.add(LatLng(point.latitude, point.longitude)) );
      print (polylineCoordinates);
      
    setState(() {
        
      });
    
   
    }
    print ("polylineCoordinates empty");
         setState(() {
        
      });


  }
  @override
  void initState() {
    polypoints();
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GoogleMap(
          initialCameraPosition:
              CameraPosition(target: LatLng(37.7749, -122.4194), zoom: 12),

              markers: {
                const Marker(markerId: MarkerId("source"),
                position: LatLng(37.7749, -122.4194)
                ),
                const Marker(markerId: MarkerId("destination"),
                position: LatLng(37.7749, -122.4133)
                )
              },
              
              polylines: {
                Polyline(polylineId: PolylineId("route"),points:polylineCoordinates, width: 4 ),

              }
              
              ),
    );
  }
}
