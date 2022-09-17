import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flame/game.dart';
import 'package:flame/flame.dart';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:flame/sprite.dart';
import 'dart:ui';
import 'dart:io';
import 'package:tower_defense/game/Enemy.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flame_svg/flame_svg.dart';
import 'package:tower_defense/game/grid.dart';
import 'package:tower_defense/game/EnemyManager.dart';

//1.570 is south/d
//6.283 / 0 is east
//3.14 is west
//4.712 north

class TowerDefenseGame extends FlameGame {
  SpriteComponent test = new SpriteComponent();
  List<Enemy>? enemyList = [];
  List<Object> towerList = [];
  List<Object> bulletList = [];
  bool load = false;

  List<int> levelList = [5, 10];
  EnemyManager enemyManager = new EnemyManager();
  SpriteSheet? spriteSheet;
  SpriteComponent dummy = new SpriteComponent();

  Future<void> onLoad() async {
    await super.onLoad();
    WidgetsFlutterBinding.ensureInitialized();

    await Flame.device.fullScreen();
    await Flame.device.setLandscape();

    camera.viewport = FixedResolutionViewport(Vector2(1280, 720));

    SpriteComponent background = SpriteComponent()
      ..sprite = await Sprite.load('game_map.png')
      ..size = size;
    add(background);
    Grid grid = new Grid();
    final imageInstance = await images.load('sprite_sheet.png');
    spriteSheet = SpriteSheet.fromColumnsAndRows(
        image: imageInstance, columns: 22, rows: 13);

    enemyManager = new EnemyManager();

    load = true;
    return super.onLoad();
  }

  TowerDefenseGame() {
    print("init");
  }

  void main() {}

  double move_x = 0.5;
  double move_y = 0.0;

// @override
// void onMount(){

// }
  @override
  void update(double dt) {
    super.update(dt);
    // sleep(const Duration(seconds: 2));
    if (load) {
      enemyManager.updateEnemy();
    }
    //print(enemyManager?.work());
  }
}
























    // test
    //   ..position = Vector2(test.position.x + move_x, test.position.y + move_y);

    // print(test.position);




  // test = SpriteComponent()
  //     ..sprite = spriteSheet.getSprite(10, 17)
  //     ..position = Vector2(500, 500)
  //     ..scale = Vector2(1, 1)
  //     ..angle = 6.283 //pi/2
  //     ..size = Vector2(150, 150)
  //     ..anchor = Anchor.center;

//  @override
//   void update(double dt) {
//     super.update(dt);
//     test..angle = test.angle + 0.001;
//   }
// enemyList.forEach((enemy) {
    //   enemy.updatePosition(dt);
    //   // print(enemy.getX());
    // });

    // dummy
    //   ..position =
    //       Vector2(dummy.position.x + move_x, dummy.position.y + move_y);
   // print(dummy.position);

/**
 * turn map at 720p
 * leg1: 0 degrees , y= 310,x 0 to 180
 * leg1: 0.785398*2  degrees , y= 310 to 510,x =220
 * 
 * 
 * 
 *  if (dummy.position.x > 220.0 &&
        dummy.position.y == 315.0 &&
        first == false) {
      move_x = 0.0;
      move_y = 0.5;
      first = true;
      dummy..angle = 0.785398 * 2;
    } else if (dummy.position.y > 530.0 &&
        dummy.position.x == 220.5 &&
        first == true &&
        second == false) {
      move_x = 0.5;
      move_y = 0.0;
      second = true;
      dummy..angle = 0.0;
    } else if (dummy.position.x > 560 &&
        dummy.position.y == 530.5 &&
        first == true &&
        second == true &&
        third == false) {
      move_x = 0.0;
      move_y = -0.5;
      third = true;
      dummy..angle = 0.785398 * 2;
    }
 */

/**
 * if (test.position.x > 220.0 &&
        test.position.y == 315.0 &&
        turns[0] == false) {
      move_x = 0.0;
      move_y = 0.5;
      turns[0] = true;
      test..angle = 0.785398 * 2;
    } else if (test.position.y > 530.0 &&
        test.position.x == 220.5 &&
        turns[0] == true &&
        turns[1] == false) {
      move_x = 0.5;
      move_y = 0.0;
      turns[1] = true;
      test..angle = 0.0;
      // } else if (test.position.x > 560 &&
      //     test.position.y == 530.5 &&
      //     first == true &&
      //     second == true &&
      //     third == false) {
      //   move_x = 0.0;
      //   move_y = -0.5;
      //   third = true;
      //   test..angle = 0.785398 * 2;
      // }

    }
 */