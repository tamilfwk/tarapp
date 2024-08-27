import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _profile = prefs.getString('ff_profile') ?? _profile;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _Iimages = [];
  List<String> get Iimages => _Iimages;
  set Iimages(List<String> value) {
    _Iimages = value;
  }

  void addToIimages(String value) {
    Iimages.add(value);
  }

  void removeFromIimages(String value) {
    Iimages.remove(value);
  }

  void removeAtIndexFromIimages(int index) {
    Iimages.removeAt(index);
  }

  void updateIimagesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    Iimages[index] = updateFn(_Iimages[index]);
  }

  void insertAtIndexInIimages(int index, String value) {
    Iimages.insert(index, value);
  }

  String _ItemImage = '';
  String get ItemImage => _ItemImage;
  set ItemImage(String value) {
    _ItemImage = value;
  }

  String _invfilter = '';
  String get invfilter => _invfilter;
  set invfilter(String value) {
    _invfilter = value;
  }

  String _profile = '';
  String get profile => _profile;
  set profile(String value) {
    _profile = value;
    prefs.setString('ff_profile', value);
  }

  String _filter = '';
  String get filter => _filter;
  set filter(String value) {
    _filter = value;
  }

  String _aiaudio = '';
  String get aiaudio => _aiaudio;
  set aiaudio(String value) {
    _aiaudio = value;
  }

  String _audio = '';
  String get audio => _audio;
  set audio(String value) {
    _audio = value;
  }

  ItemStruct _Items = ItemStruct();
  ItemStruct get Items => _Items;
  set Items(ItemStruct value) {
    _Items = value;
  }

  void updateItemsStruct(Function(ItemStruct) updateFn) {
    updateFn(_Items);
  }

  List<AichatStruct> _aichat = [];
  List<AichatStruct> get aichat => _aichat;
  set aichat(List<AichatStruct> value) {
    _aichat = value;
  }

  void addToAichat(AichatStruct value) {
    aichat.add(value);
  }

  void removeFromAichat(AichatStruct value) {
    aichat.remove(value);
  }

  void removeAtIndexFromAichat(int index) {
    aichat.removeAt(index);
  }

  void updateAichatAtIndex(
    int index,
    AichatStruct Function(AichatStruct) updateFn,
  ) {
    aichat[index] = updateFn(_aichat[index]);
  }

  void insertAtIndexInAichat(int index, AichatStruct value) {
    aichat.insert(index, value);
  }

  String _aianswer = '';
  String get aianswer => _aianswer;
  set aianswer(String value) {
    _aianswer = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
