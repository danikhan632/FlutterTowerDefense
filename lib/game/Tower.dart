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
import 'dart:math';

class Tower extends SpriteComponent{
  // gun turret in a 2d tower defense game
  int x_pos = 0;
  int y_pos = 0;

  int damage = 0;
  double range = 0;
  double fire_rate = 0;
  double direction = 0;
  int cost = 0;
  //upgrades?
  String sprite_bottom = "";
  String sprite_top = "";
  String sprite_muzzle_flash = "";
  String gunfire_audio = "";

  int getCost() {
    return cost;
  }

  int getDamage() {
    return damage;
  }

  double getRange() {
    return range;
  }

  double getFireRate() {
    return fire_rate;
  }

  double getDirection() {
    return direction;
  }

  int getX() {
    return x_pos;
  }

  int getY() {
    return y_pos;
  }

  int getWidth() {
    return width;
  }

  int getHeight() {
    return height;
  }

  String getSpriteBottom() {
    return sprite_bottom;
  }

  String getSpriteTop() {
    return sprite_top;
  }

  String getSpriteMuzzleFlash() {
    return sprite_muzzle_flash;
  }

  String getGunfireAudio() {
    return gunfire_audio;
  }

  void setX(int x) {
    x_pos = x;
  }

  void setY(int y) {
    y_pos = y;
  }

  void setDirection(double d) {
    direction = d;
  }

  void setRange(double r) {
    range = r;
  }

  void setFireRate(double f) {
    fire_rate = f;
  }

  void setDamage(int d) {
    damage = d;
  }

  void setCost(int c) {
    cost = c;
  }

  void setSpriteBottom(String s) {
    sprite_bottom = s;
  }

  void setSpriteTop(String s) {
    sprite_top = s;
  }

  void setSpriteMuzzleFlash(String s) {
    sprite_muzzle_flash = s;
  }

  void setGunfireAudio(String s) {
    gunfire_audio = s;
  }

  Tower(int x, int y, int w, int h, int d, double r, double f, double dir,
      int c, String sb, String st, String smf, String ga) {
    x_pos = x;
    y_pos = y;
    width = w;
    height = h;
    damage = d;
    range = r;
    fire_rate = f;
    direction = dir;
    cost = c;
    sprite_bottom = sb;
    sprite_top = st;
    sprite_muzzle_flash = smf;
    gunfire_audio = ga;
  }

// Enemy getTarget(List<Object> enemyList, Tower tower){
//     //find the closest enemy
//     //return the enemy
//     // if(enemyList.length == 0){
//     //   return Enemy(0,0,0,0,0,0,0,0,0,0,0,0);
//     // }
//     for(var i = enemyList.length - 1; i >= 0; i--){
//       if(getDistance(enemyList[i],tower) <= range){
//         return enemyList[i];
//       }

//     }
//   }
  // double getDistance(Enemy enemy, Tower tower){
  //   //find the distance between the enemy and the player
  //   //return the distance
  //   double distance = 0;
  //   distance = sqrt((pow((enemy.getX() - tower.getX()), 2) + pow((enemy.getY() - tower.getY()), 2)));
  //   return distance;
  // }

}
