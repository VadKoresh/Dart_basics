class Euclid{

  static int hod(int a, int b){
    while(b != 0){
      int i = a%b;
      a = b;
      b = i;
    }
    return a;
  }

  static num hok(int a, int b){
    return (a / hod(a, b) * b);
  }
}