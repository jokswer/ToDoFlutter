import 'package:flutter/material.dart';

class Route {
  final String name;
  final String route;
  final WidgetBuilder builder;

  const Route({this.name, this.route, this.builder});
}