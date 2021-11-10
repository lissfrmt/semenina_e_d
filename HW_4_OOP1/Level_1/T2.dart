import 'dart:math';

class Vector2D {
  double vX = 0;
  double vY = 0;
  Vector2D.unit () {
    vX = 1;
    vY = 1;
  }

  Vector2D (this.vX, this.vY) {}
  Vector2D.clone (Vector2D v) {
    this.vX = v.vX;
    this.vY = v.vY;
  }
  void display() {
    print('(' + this.vX.toStringAsFixed(2) + ', '+ this.vY.toStringAsFixed(2) + ')');
  }
  double length() {
    return sqrt(this.vY * this.vY + this.vX * this.vX);
  }

  void add(Vector2D v) {
    this.vY += v.vY;
    this.vX += v.vX;
  }

  void sub(Vector2D v) {
    this.vY -= v.vY;
    this.vX -= v.vX;
  }

  void scale(double scaleFactor) {
    this.vX *= scaleFactor;
    this.vY *= scaleFactor;
  }
}

void main() {
  Vector2D vA = Vector2D.unit();
  Vector2D vB = Vector2D(1.0, 3.0);
  Vector2D vC = Vector2D.clone(vB);
  vA.add(vB);
  vA.display();
  vA.sub(vC);
  vA.display();
  print(vB.length());
  vC.scale(2);
  vC.display();
}