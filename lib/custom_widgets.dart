import 'package:flutter/material.dart';
import 'package:QCard/const/constants.dart';

BottomNavigationBarItem navItem(String label){
    return BottomNavigationBarItem(
        icon: IconMap[label],
        label: label,
    );
  }
