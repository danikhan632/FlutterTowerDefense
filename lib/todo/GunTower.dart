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

class GunTower  {
  // gun turret in a 2d tower defense game
   int x_pos = 0;
  int y_pos = 0;
  int width = 0;
  int height = 0;
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
  
  GunTower(int x, int y, int w, int h, int d, 
  double r, double f, double dir, int c, String 
  sb, String st, String smf, String ga) {

  
  // Super(x_pos = x, y_pos = y, width = w, height = h, damage = d, range = r, fire_rate = f, direction = dir,
  //  cost = c, sprite_bottom = sb, sprite_top = st, sprite_muzzle_flash = smf, gunfire_audio = ga);

  }
// test = SpriteComponent()
//       ..sprite = spriteSheet.getSprite(10, 18)
//       ..position = Vector2(600, 500)
//       ..scale = Vector2(1, 1)
//       ..angle = -0.785398 * 2 //pi/2
//       ..size = Vector2(150, 150)
//       ..anchor = Anchor.center;



}
