import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeImages {
  const HomeImages({
    this.name,
    this.imageurl,
  });
  final String name;
  final IconData imageurl;
}

final List<HomeImages> homeimages = [
  HomeImages(
    name: '英雄联盟',
    imageurl: Icons.book,
  ),
  HomeImages(
    name: 'lol云顶之弈',
    imageurl: Icons.backspace,
  ),
  HomeImages(
    name: '王者荣耀',
    imageurl: Icons.satellite,
  ),
  HomeImages(
    name: '娱乐',
    imageurl: Icons.dashboard,
  ),
  HomeImages(
    name: '单机',
    imageurl: Icons.pages,
  ),
  HomeImages(
    name: '电台',
    imageurl: Icons.message,
  ),
  HomeImages(
    name: '绝地求生',
    imageurl: Icons.hd,
  ),
  HomeImages(
    name: '唱见电台',
    imageurl: Icons.battery_charging_full,
  ),
  HomeImages(
    name: '第五人格',
    imageurl: Icons.label,
  ),
  HomeImages(
    name: '全部标签',
    imageurl: Icons.message,
  ),
];
