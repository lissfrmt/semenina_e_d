class Vector2D {
  double? vX;
  double? vY;
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
    print('(' + this.vX!.toStringAsFixed(2) + ', '+ this.vY!.toStringAsFixed(2) + ')');
  }
}

void main() {
  Vector2D v = Vector2D(1.2374, 2.2334);
  Vector2D v2 = Vector2D.unit();
  Vector2D v3 = Vector2D.clone(v);
  v.display();
  v2.display();
  v3.display();
}