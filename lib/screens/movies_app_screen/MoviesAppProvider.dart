import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MoviesAppProvider extends ChangeNotifier{
  List<String> category= ['All','Action','Advanture','Drama','Comdie'
      'Romantic','Real Life','War','Horror','Science Fiction'];



  int _index = 0;

  int get index => _index;

  set index(int value) {
    _index = value;
    notifyListeners();
  }
}