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

import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flame/game.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'dart:ui';
import 'package:tower_defense/game/Enemy.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flame_svg/flame_svg.dart';

class Enemy {
  // gun turret in a 2d tower defense game
  double x_pos = 0;
  double y_pos = 0;
  int width = 0;
  int height = 0;
  int damage = 0;
  int HP = 0;
  double direction = 4.712;
  double speed = 0.1;
  int reward = 0;
  double range = 0;
  double fire_rate = 0;
  int damage_state = 0;
  SpriteComponent sprite_enemy = new SpriteComponent();

  //upgrades?

  //create an string array of the enemy sprites
  List<Sprite> enemy_sprites = []; //damage states

//EnemgetFirstEnergy

  Enemy(SpriteComponent spr, double vel) {
    sprite_enemy = spr;
    x_pos = sprite_enemy.position.x;
    y_pos = sprite_enemy.position.y;
    height = sprite_enemy.size.x.toInt();
    width = sprite_enemy.size.y.toInt();
    direction = sprite_enemy.angle;
    speed = vel;
    
  }
//test = SpriteComponent()
//       ..sprite = spriteSheet.getSprite(10, 18)
//       ..position = Vector2(600, 500)
//       ..scale = Vector2(1, 1)
//       ..angle = -0.785398 * 2 //pi/2
//       ..size = Vector2(150, 150)
//       ..anchor = Anchor.center;

  // Enemy(this.x_pos, this.y_pos, this.width, this.height, this.damage, this.HP, this.direction, this.speed, this.reward, this.range, this.fire_rate, this.sprite_enemy, this.enemy_sprites);
  SpriteComponent? getSprite() {
    return sprite_enemy;
  }

  double getX() {
    return x_pos;
  }

  double getY() {
    return y_pos;
  }

  int getWidth() {
    return width;
  }

  int getHeight() {
    return height;
  }

  int getDamage() {
    return damage;
  }

  int getHP() {
    return HP;
  }

  double getDirection() {
    return direction;
  }

  double getSpeed() {
    return speed;
  }

  int getReward() {
    return reward;
  }

  double getRange() {
    return range;
  }

  double getFireRate() {
    return fire_rate;
  }

  List<Sprite> getEnemySprites() {
    return enemy_sprites;
  }

  void setX(double x) {
    x_pos = x;
  }

  void setY(double y) {
    y_pos = y;
  }

  void setWidth(int w) {
    width = w;
  }

  void setHeight(int h) {
    height = h;
  }

  void setDamage(int d) {
    damage = d;
  }

  void setHP(int h) {
    HP = h;
  }

  void setDirection(double d) {
    direction = d;
  }

  void setSpeed(double s) {
    speed = s;
  }

  void setReward(int r) {
    reward = r;
  }

  void setRange(double r) {
    range = r;
  }

  void setFireRate(double f) {
    fire_rate = f;
  }

  // void setSprite(String s){sprite_enemy = s;}
  void setEnemySprites(List<Sprite> s) {
    enemy_sprites = s;
  }

  void setDamageState(int d) {
    damage_state = d;
  }

  int getDamageState() {
    return damage_state;
  }

  Vector2 updatePosition(double dt) {
    Vector2 new_pos = new Vector2(x_pos, y_pos);
    new_pos.x += (speed * dt) * cos(direction);
    new_pos.y += (speed * dt) * sin(direction);
    return new_pos;
  }

  @override
  void render(Canvas canvas) {}
  void update(double dt) {
    //enemy.update(dt);
    sprite_enemy..position = updatePosition(dt);
  }
}
