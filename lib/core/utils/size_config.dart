import 'package:flutter/material.dart';

class SizeConfig{
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context){
    screenWidth=MediaQuery.of(context).size.width;
    screenHeight=MediaQuery.of(context).size.height;
    orientation=MediaQuery.of(context).orientation;

    defaultSize = orientation == Orientation.landscape
                ?screenWidth! * .024
                :screenHeight! * .024;
    
    print("This is default size $defaultSize");
  }
}