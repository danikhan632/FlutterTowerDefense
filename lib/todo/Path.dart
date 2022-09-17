import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flame/game.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

// import 'package:tower_defense/game/Tower.dart';
// import 'package:tower_defense/game/Enemy.dart';
// import 'package:tower_defense/game/Projectile.dart';
// import 'package:tower_defense/game/SideMenu.dart';

// List<Enemy> enemyList = [];
List<Vector3> turns = [
  Vector3(0, 315.00, 0.0),
  Vector3(215.0, 315.0, 1.570796),
  Vector3(560.0, 530.0, -1.570796),
];

class Path {
  //list of enemies, function for devices size, list of turns
  // Path(List<Enemy> enemyList_in) {
  //   enemyList =enemyList_in;
  // }

  void update(double dt) {
    
  }
}
