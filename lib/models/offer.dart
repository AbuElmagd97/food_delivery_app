import 'package:fooddeliveryapp/models/restaurant.dart';

class Offer {
  String name;
  String type;
  String availability;
  String discount;
  String duration;
  String regularPrice;
  String salePrice;
  String img;
  String description;
  Restaurant restaurant;

  Offer({this.name,
    this.type,
    this.availability,
    this.discount,
    this.duration,
    this.regularPrice,
    this.salePrice,
    this.img,
    this.description,
    this.restaurant});
}
