import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:fooddeliveryapp/constants.dart';
import 'package:geocoder/geocoder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_webservice/places.dart';

class MapScreen extends StatefulWidget {
  static const RouteName = "/MapScreen";

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  ///GoogleMap vars
  CameraPosition _initialLocation = CameraPosition(target: LatLng(0.0, 0.0));
  GoogleMapController mapController;
  Position _currentPosition;

  _getCurrentLocation() async {
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) async {
      setState(() {
        // Store the position in the variable
        _currentPosition = position;

        print('CURRENT POS: $_currentPosition');

        // For moving the camera to current location
        mapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(position.latitude, position.longitude),
              zoom: 18.0,
            ),
          ),
        );
      });
    }).catchError((e) {
      print(e);
    });
  }

  ///places APi
  GoogleMapsPlaces _places = GoogleMapsPlaces(apiKey: apiKey);

  Future<Null> displayPrediction(Prediction p) async {
    if (p != null) {
      PlacesDetailsResponse detail =
          await _places.getDetailsByPlaceId(p.placeId);

      var placeId = p.placeId;
      double lat = detail.result.geometry.location.lat;
      double lng = detail.result.geometry.location.lng;

      var address = await Geocoder.local.findAddressesFromQuery(p.description);

      print(lat);
      print(lng);
    }
  }


  @override
  void initState() {
    _getCurrentLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      child: Scaffold(
        body: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: _initialLocation,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              mapType: MapType.normal,
              zoomGesturesEnabled: true,
              zoomControlsEnabled: false,
              onMapCreated: (GoogleMapController controller) {
                mapController = controller;
              },
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(5.0), // button color
                    child: InkWell(
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: Icon(Icons.my_location),
                      ),
                      onTap: () {
                        mapController.animateCamera(
                          CameraUpdate.newCameraPosition(
                            CameraPosition(
                              target: LatLng(
                                _currentPosition.latitude,
                                _currentPosition.longitude,
                              ),
                              zoom: 18.0,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                alignment: Alignment.topCenter,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search for your delivery area",
                    hintStyle: TextStyle(color: Colors.white70, fontSize: 18.0),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20.0,
                      color: Colors.deepOrange,
                    ),
                    filled: true,
                    fillColor: Colors.black,
                  ),
                  onTap: () async {
                    // show input autocomplete with selected mode
                    // then get the Prediction selected
                    Prediction p = await PlacesAutocomplete.show(
                        context: context, apiKey: apiKey);
                    displayPrediction(p);
                  },
                ),
              ),
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                  width: width,
                  height: height * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15.0),
                      topLeft: Radius.circular(15.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery Adress",
                        style: style2.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white70),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Alexandria,Victoria",
                            style: style1,
                          ),
                          GestureDetector(
                            onTap: () => _showBottomSheet(context),
                            child: Text(
                              "CHANGE",
                              style: style3,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width,
                        height: 45,
                        child: RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          color: Colors.deepOrange,
                          child: Text(
                            "CONFIRM LOCATION",
                            style: style1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.35,
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Select Your City",
                  style: style1.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Alexandria",
                  style: style1.copyWith(
                      fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                Divider(
                  color: Colors.blueGrey,
                ),
                Text(
                  "Cairo",
                  style: style1.copyWith(
                      fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                Divider(
                  color: Colors.blueGrey,
                ),
                Text(
                  "Giza",
                  style: style1.copyWith(
                      fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                Divider(
                  color: Colors.blueGrey,
                ),
                Text(
                  "Ismailia",
                  style: style1.copyWith(
                      fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        });
  }
}
