import 'package:fooddeliveryapp/models/restaurant.dart';

class Offer {
  String name;
  String discount;
  String duration;
  String regularPrice;
  String salePrice;
  String img;
  Restaurant restaurant;

  Offer(
      {this.name,
      this.discount,
      this.duration,
      this.regularPrice,
      this.salePrice,
      this.img,
      this.restaurant});
}