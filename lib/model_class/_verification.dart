import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Item {
  String? country;
  String? code;

  Item({this.code, this.country});

  static List<Item> users() {
    return [
      Item(country: 'BD', code: '+880'),
      Item(country: 'USA', code: '0011'),
      Item(country: 'KSA', code: '+966'),
      Item(country: 'IND', code: '0000')
    ];
  }
}
