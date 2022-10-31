import 'dart:math';

class BinarySystem {
  static int integerToBinary(int a) {
    List<int> listIntegerRemains = [];
    while (a != 0) {
      double b = a / 2;
      int integerRemains = a % 2;
      a = b.toInt();
      listIntegerRemains.add(integerRemains);
    }
    return int.parse(listIntegerRemains.reversed.join());
  }

  static int binaryToInteger(int a) {
    int result = 0;
    var stringBinary = a.toString();
    for(int i = 0; i < stringBinary.length; i++){
      int value = int.parse(stringBinary[i]);
      result += (pow(stringBinary.length - i - 1, 2) * value).toInt();
    }
    return result;
  }
}
