import 'package:flutter/material.dart';

class MyInheritedWidget extends InheritedWidget{
  final InheritedHouseWidgetState data;
  MyInheritedWidget({required this.data, required super.child});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    throw UnimplementedError();
  }

}

class InheritedHouseWidget extends StatefulWidget {
  const InheritedHouseWidget({Key? key}) : super(key: key);

  @override
  State<InheritedHouseWidget> createState() => InheritedHouseWidgetState();
}

class InheritedHouseWidgetState extends State<InheritedHouseWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
