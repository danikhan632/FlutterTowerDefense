import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flame/game.dart';
import 'package:flame/flame.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:math';
// import 'package:tower_defense/game/Tower.dart';
// import 'package:tower_defense/game/Enemy.dart';
// import 'package:tower_defense/game/Projectile.dart';
// import 'package:tower_defense/game/SideMenu.dart';
import 'package:flutter/material.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flame/game.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'dart:ui';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:tower_defense/game/Enemy.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flame_svg/flame_svg.dart';

class Grid extends FlameGame {
  int widthRes = 1280;
  int heightRes = 720;
  List<Enemy> enemyList = [];
  List<int> widthGrid = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15
  ]; //16
  List<int> heightGrid = [0, 1, 2, 3, 4, 5, 6, 7, 8]; //9
  List<gridObj> turnList = [
    gridObj(new Object(), 4, 5, 1.570), //
    gridObj(new Object(), 4, 7, 6.283),
    gridObj(new Object(), 7, 7, 4.712),
    gridObj(new Object(), 7, 2, 6.283),
    gridObj(new Object(), 10, 2, 1.570),
    gridObj(new Object(), 10, 5, 6.283),
  ];
  grid() {
    List<gridObj> objects = [];
  }

  bool placeEnemy(Enemy enemy, SpriteComponent sprite) {
    int heightPlace = 5;
    int widthPlace = 0;
    
    return false;
  }


  Vector2 positionGrid(Vector2 coords) {
    return Vector2((coords.y ~/ 16).toDouble(), (coords.y ~/ 9).toDouble());
  }
}

class gridObj {
  double x_coord = 0;
  double y_coord = 0;
  Object obj = new Object();
  int grid_x = 0;
  int grid_y = 0;
  double angle = 0.00;
  bool turn = false;
  // gridObj(Object obj, double x_coord, double y_coord) {
  //   obj = obj;
  //   x_coord = x_coord;
  //   y_coord = y_coord;
  //   grid_x = (x_coord ~/ 16);
  //   grid_y = (y_coord ~/ 9);
  //0 is east
  //1.570 is south/d
  //6.283 / 0 is east
  //3.14 is west
  //4.71238898038 north
  // }
  gridObj(Object obj2, int gridX, int grid_y, double angle) {
    obj = obj2;
    gridX = gridX;
    grid_y = grid_y;
    angle = angle;
  }
}

// class EnemyManager{
//   List<Enemy> enemyList = [];
//   EnemyManager(){
//     enemyList = [];
//   }
//   void addEnemy(Enemy enemy){
//     enemyList.add(enemy);
//   }
//   void removeEnemy(Enemy enemy){
//     enemyList.remove(enemy);
//   }
// }
