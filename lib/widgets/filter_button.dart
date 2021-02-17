import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/offer.dart';

import '../constants.dart';

class FilterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _filterBottomSheet(context),
      child: Container(
          width: 75,
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 0.5),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Row(
            children: [
              Icon(
                Icons.filter_list_outlined,
                color: Colors.white,
              ),
              Text(
                "FILTER",
                style: style2,
              ),
            ],
          )),
    );
  }

  void _filterBottomSheet(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    List<Offer> _offers = [
      Offer(type: 'Discount', salePrice: '30 EGP', availability: 'Can Deliver'),
      Offer(
          type: 'Free Items', salePrice: '40 EGP', availability: 'Active Now'),
      Offer(type: 'Discount On Items', salePrice: '50 EGP'),
      Offer(type: 'Free Delivery', salePrice: '70 EGP'),
      Offer(type: 'Discount On Menu', salePrice: '100 EGP'),
    ];
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
          int _priceIndex;
          int _typeIndex;
          int _availabilityIndex;

          void _typeSelected(int i) {
            _typeIndex = i;
          }

          void _priceSelected(int index) {
            _priceIndex = index;
          }

          void _availabilitySelected(int x) {
            _availabilityIndex = x;
          }

          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setModalState) {
            return Container(
              height: height * 0.5,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Filter by',
                    style: style1,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Offer Type',
                          style: style1,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setModalState(() {
                                    _typeSelected(0);
                                  });
                                },
                                child: Container(
                                  width: width * 0.2,
                                  height: 30,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: _typeIndex != null && _typeIndex == 0
                                        ? Colors.deepOrange
                                        : Colors.white10,
                                    borderRadius: BorderRadius.circular(3.0),
                                  ),
                                  child: Text(
                                    _offers[0].type,
                                    style: style2.copyWith(
                                        color: _typeIndex != null &&
                                                _typeIndex == 0
                                            ? Colors.white
                                            : Colors.grey),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setModalState(() {
                                    _typeSelected(1);
                                  });
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: width * 0.25,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: _typeIndex != null && _typeIndex == 1
                                        ? Colors.deepOrange
                                        : Colors.white10,
                                    borderRadius: BorderRadius.circular(3.0),
                                  ),
                                  child: Text(
                                    _offers[1].type,
                                    style: style2.copyWith(
                                        color: _typeIndex != null &&
                                                _typeIndex == 1
                                            ? Colors.white
                                            : Colors.grey),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setModalState(() {
                                    _typeSelected(2);
                                  });
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: width * 0.35,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: _typeIndex != null && _typeIndex == 2
                                        ? Colors.deepOrange
                                        : Colors.white10,
                                    borderRadius: BorderRadius.circular(3.0),
                                  ),
                                  child: Text(
                                    _offers[2].type,
                                    style: style2.copyWith(
                                        color: _typeIndex != null &&
                                                _typeIndex == 2
                                            ? Colors.white
                                            : Colors.grey),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setModalState(() {
                                  _typeSelected(3);
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: width * 0.25,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: _typeIndex != null && _typeIndex == 3
                                      ? Colors.deepOrange
                                      : Colors.white10,
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Text(
                                  _offers[3].type,
                                  style: style2.copyWith(
                                      color:
                                          _typeIndex != null && _typeIndex == 3
                                              ? Colors.white
                                              : Colors.grey),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                setModalState(() {
                                  _typeSelected(4);
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: width * 0.35,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: _typeIndex != null && _typeIndex == 4
                                      ? Colors.deepOrange
                                      : Colors.white10,
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Text(
                                  _offers[4].type,
                                  style: style2.copyWith(
                                      color:
                                          _typeIndex != null && _typeIndex == 4
                                              ? Colors.white
                                              : Colors.grey),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Price',
                          style: style1,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: width,
                          height: height * 0.05,
                          child: ListView.builder(
                            itemCount: _offers.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setModalState(() {
                                    _priceSelected(index);
                                  });
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 60,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: _priceIndex != null &&
                                              _priceIndex == index
                                          ? Colors.deepOrange
                                          : null,
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.white10,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Text(
                                      _offers[index].salePrice,
                                      style: style2.copyWith(
                                          color: _priceIndex != null &&
                                                  _priceIndex == index
                                              ? Colors.white
                                              : Colors.white70,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Availability',
                          style: style1,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setModalState(() {
                                  _availabilitySelected(0);
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4),
                                child: Container(
                                  alignment: Alignment.center,
                                  width: width * 0.25,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: _availabilityIndex != null &&
                                            _availabilityIndex == 0
                                        ? Colors.deepOrange
                                        : Colors.white10,
                                    borderRadius: BorderRadius.circular(3.0),
                                  ),
                                  child: Text(
                                    _offers[0].availability,
                                    style: style2.copyWith(
                                        color: _availabilityIndex != null &&
                                                _availabilityIndex == 0
                                            ? Colors.white
                                            : Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setModalState(() {
                                  _availabilitySelected(1);
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4),
                                child: Container(
                                  alignment: Alignment.center,
                                  width: width * 0.25,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: _availabilityIndex != null &&
                                            _availabilityIndex == 1
                                        ? Colors.deepOrange
                                        : Colors.white10,
                                    borderRadius: BorderRadius.circular(3.0),
                                  ),
                                  child: Text(
                                    _offers[1].availability,
                                    style: style2.copyWith(
                                        color: _availabilityIndex != null &&
                                                _availabilityIndex == 1
                                            ? Colors.white
                                            : Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: width * 0.55,
                              height: height * 0.06,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                'APPLY FILTER',
                                style: style2.copyWith(color: Colors.white),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: Container(
                                width: width * 0.3,
                                height: height * 0.06,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.deepOrange, width: 1),
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  'RESET',
                                  style:
                                      style2.copyWith(color: Colors.deepOrange),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          });
        });
  }
}
