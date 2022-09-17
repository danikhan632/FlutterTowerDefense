import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:tower_defense/game/game.dart';
import 'package:path_provider/path_provider.dart';

import 'package:tower_defense/game/Tower.dart';
import 'package:tower_defense/game/Enemy.dart';
import 'package:tower_defense/game/Projectile.dart';
import 'package:tower_defense/game/SideMenu.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // cocker spaniel
  runApp(GameWidget(game: TowerDefenseGame()));
}


 
/**
git clone https://github.com/danikhan632/tower_defense.git
git pull

git add .
git commit -m "update"
git push





 */

