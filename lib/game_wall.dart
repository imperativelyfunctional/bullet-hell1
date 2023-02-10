import 'package:bullet_hell/bullet.dart';
import 'package:flame/components.dart';

class GameWall extends ScreenHitbox {
  @override
  void onCollision(Set<Vector2> intersectionPoints, PositionComponent other) {
    if (other is Bullet) {
      other.removeFromParent();
    }
    super.onCollision(intersectionPoints, other);
  }
}
