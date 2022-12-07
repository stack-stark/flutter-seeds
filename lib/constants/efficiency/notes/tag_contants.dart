import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jungle/models/efficiency/notes/tag_model.dart';

Map<String, Color> tagColors = {
  "pink": const Color(0xffe35864),
  "purple": const Color(0xff7d26dc),
  "green": const Color(0xff00b065),
  "yellow": const Color(0xffEBB105),
  "blue": const Color(0xff2176FF),
};

List<TagColorOptionsModel> tagColorOptions = [
  const TagColorOptionsModel(
    key: 'pink',
    borderColor: Color.fromRGBO(227, 88, 100, 0.4),
    color: Color.fromRGBO(227, 88, 100, 1),
  ),
  const TagColorOptionsModel(
    key: 'purple',
    color: Color.fromRGBO(125, 38, 220, 1),
    borderColor: Color.fromRGBO(125, 38, 220, 0.4),
  ),
  const TagColorOptionsModel(
    key: 'green',
    color: Color.fromRGBO(0, 176, 101, 1),
    borderColor: Color.fromRGBO(0, 176, 101, 0.4),
  ),
  const TagColorOptionsModel(
    key: 'yellow',
    color: Color.fromRGBO(235, 177, 5, 1),
    borderColor: Color.fromRGBO(235, 177, 5, 0.4),
  ),
  const TagColorOptionsModel(
    key: 'blue',
    color: Color.fromRGBO(33, 118, 255, 1),
    borderColor: Color.fromRGBO(33, 118, 255, 0.4),
  ),
];
