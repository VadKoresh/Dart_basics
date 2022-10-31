import 'dart:math';

class Point {
  late final num _x;
  late final num _y;
  late final num _z;

  Point(this._x, this._y, this._z);

  factory Point.begin() {
    return Point(2, 3, 4);
  }

  num distanceTo(Point another) {
    return sqrt(pow(another._x - this._x, 2) + pow(another._y - this._y, 2) + pow(another._z - this._z, 2));
  }
}
