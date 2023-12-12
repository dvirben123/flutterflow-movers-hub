import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

int likes(UserPostsRecord? post) {
  return 0;
}

bool hasUploadedMedia(String? mediaPath) {
  return mediaPath != null && mediaPath.isNotEmpty;
}

LatLng? convertFromJsonToLatLng(dynamic json) {
  // print("JSON DVIR" + json);
  if (json == null) {
    return null;
  }

  var fromLocation = jsonDecode(json["fromLang"]);
  return LatLng(fromLocation["lat"], fromLocation["lng"]);
}

List<LatLng>? convertLatLngList(dynamic json) {
  if (json == null) {
    return null;
  }

  var fromLocation = jsonDecode(json["fromLang"]);
  var toLocation = jsonDecode(json["toLang"]);

  return [
    LatLng(fromLocation["lat"], fromLocation["lng"]),
    LatLng(toLocation["lat"], toLocation["lng"])
  ];
}

LatLng? converLoadFromLocation(dynamic json) {
  if (json == null) {
    return null;
  }

  var fromLocation = jsonDecode(json["ldLoadFromLang"]);
  return LatLng(fromLocation["lat"], fromLocation["lng"]);
}
