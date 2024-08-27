import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/auth/supabase_auth/auth_util.dart';

List<dynamic>? string2images(String? images) {
  // string to Imagepath list
  if (images == null) {
    return null;
  }

  final List<String> items = images.split(',');
  final List<dynamic> result = [];
  for (final item in items) {
    try {
      result.add(jsonDecode(item));
    } catch (e) {
      result.add(item);
    }
  }
  return result;
}

String imgpath2string(String image) {
  return image;
}

String color2string(Color color) {
  // return as string
  String hex = color.value.toRadixString(16).padLeft(8, '0');
  return '#${hex.substring(2)}';
}

String string2imagepath(String image) {
  return image;
}

String? imagelist2string(List<String>? images) {
  // return the argument list to string seperated by comma
  if (images == null || images.isEmpty) {
    return null;
  }

  return images.join(',');
}
