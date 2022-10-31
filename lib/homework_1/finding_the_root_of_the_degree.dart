class FindingTheRootOfTheDegree {
  static double _mabs(double x) {
    return (x < 0) ? -x : x;
  }

  static double AlgorithmFindRootTheDegree(double num, int rootDegree) {
    double eps = 0.00001; //допустимая погрешность
    double root = num / rootDegree; //начальное приближение корня
    double rn = num; //значение корня последовательным делением
    while (_mabs(root - rn) >= eps) {
      rn = num;
      for (int i = 1; i < rootDegree; i++) {
        rn = rn / root;
      }
      root = 0.5 * (rn + root);
    }
    return root;
  }
}
