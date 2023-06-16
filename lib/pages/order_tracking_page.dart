import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:trashmap/pages/constants.dart';

class OrderTrackingPage extends StatefulWidget {
  const OrderTrackingPage({Key? key}) : super(key: key);

  @override
  State<OrderTrackingPage> createState() => OrderTrackingPageState();
}

class OrderTrackingPageState extends State<OrderTrackingPage> {

  static const LatLng sourceLocation = LatLng(37.33500926, -122.03272188);
  static const LatLng destination = LatLng(37.33429383, -122.06600055);

  List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;

    Future<void> _getLocation() async {
      final location = await getLocation();
      setState(() {
        currentLocation = location;
      });
    }

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
      PointLatLng(destination.latitude, destination.longitude),
      );

      if (result.points.isNotEmpty) {
          result.points.forEach((PointLatLng point) => polylineCoordinates.add(
            LatLng(point.latitude, point.longitude)
            ),
          );
          setState(() {});
  }
  }

  @override
  void initState() {
    _getLocation();
    getPolyPoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentLocation == null
      ? const Center(child: Text("Loading"))
      : GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(currentLocation!.latitude!, currentLocation!.longitude!),
          zoom: 13.5,  
          ),
        polylines: {
          Polyline(
          polylineId: PolylineId("route"),
          points: polylineCoordinates,
          color: primaryColor,
          width: 6,
          ),
        },
        markers: {
          Marker(markerId: const MarkerId("currentLocation"),
          position: LatLng(currentLocation!.latitude!, currentLocation!.longitude!),
          ),
          const Marker(markerId: MarkerId("Source"),
          position: sourceLocation,
          ),
          const Marker(markerId: MarkerId("Destination"),
          position: destination,
          ),
        },
      ),
    );
  }
}