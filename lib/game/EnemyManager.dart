import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flame/game.dart';
import 'package:flame/flame.dart';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:flame/sprite.dart';
import 'dart:ui';
import 'package:tower_defense/game/Enemy.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flame_svg/flame_svg.dart';
import 'package:tower_defense/game/grid.dart';

class EnemyManager extends FlameGame {
  List<int> levelList = [5, 10];
  SpriteComponent test = SpriteComponent();
  List<Enemy> enemyList = [];
  SpriteSheet? spriteSheet;
  Enemy? dummy;
  @override
  Future<void> onLoad() async {
    final imageInstance = await images.load('sprite_sheet.png');
    SpriteSheet spriteSheet = SpriteSheet.fromColumnsAndRows(
        image: imageInstance, columns: 22, rows: 13);
  //  spawnEnemies(spriteSheet);
    test
      ..sprite = spriteSheet?.getSprite(10, 18)
      ..position = Vector2(0, 310)
      ..scale = Vector2(1, 1)
      ..angle = 4.712 //pi/2
      ..size = Vector2(150, 150)
      ..anchor = Anchor.center;
    // enemyList.forEach((enemy) {
    //   add(enemy.getSprite());
    // });
  }

  void main() {
    print('enemy man main');
    // renderEnemy();
  }

  // SpriteComponent renderEnemy() {
    
  //   Enemy dummy = new Enemy(test, 0.3);
  //   print('rendered!');
  //   return test;
  // }

  bool updateEnemy() {
    test..position = Vector2(test.position.x + 0.3, test.position.y);
    return true;
  }

  EnemyManager() {
    print('owrsdks');
    main();
  }
  String work() {
    return "EnemyManager works";
  }

  //  String work2() {
  //   String
  // }
  // @override
  // void onMount() {
  //   renderEnemy();

  //   super.onMount();
  // }

  List<Enemy>? spawnEnemies(SpriteSheet spriteSheet) {
    for (int i = 0; i < levelList[0]; i++) {
      SpriteComponent test = SpriteComponent()
        ..sprite = spriteSheet.getSprite(10, 18)
        ..position = Vector2(0, 310)
        ..scale = Vector2(1, 1)
        ..angle = 4.712 //pi/2
        ..size = Vector2(150, 150)
        ..anchor = Anchor.center;
      Enemy dummy = new Enemy(test, 0.3);
      enemyList.add(dummy);
      return enemyList;
    }

    @override
    void update(double dt) {
      super.update(dt);

      print('pdadate');
    }
  }
}
