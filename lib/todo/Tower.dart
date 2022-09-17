import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flame/game.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'dart:ui';
import 'package:flame/image_composition.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:ui' as ui;

// import 'package:tower_defense/game/Tower.dart';
// import 'package:tower_defense/game/Enemy.dart';
// import 'package:tower_defense/game/Projectile.dart';
// import 'package:tower_defense/game/SideMenu.dart';
import 'package:flame/components.dart';
import 'package:flame/image_composition.dart';

// Represents a player in the game world.
class Tower extends SpriteComponent {
  Tower(
    Image image, {
    Vector2? position,
    Vector2? size,
    Vector2? scale,
    double? angle,
    Anchor? anchor,
    int? priority,
  }) : super(
    // image,
    //       srcPosition: Vector2.zero(),
    //       srcSize: Vector2.all(32),
          position: position,
          size: size,
          scale: scale,
          angle: angle,
          anchor: anchor,
          priority: priority,
        );
}
