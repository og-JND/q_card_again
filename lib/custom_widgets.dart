import 'package:flutter/material.dart';
import 'package:q_card_again/const/constants.dart';

BottomNavigationBarItem navItem(String label){
    return BottomNavigationBarItem(
        icon: IconMap[label],
        label: label,
    );
  }
