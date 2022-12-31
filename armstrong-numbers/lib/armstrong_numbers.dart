class ArmstrongNumbers {
  // Put your code here
  ArmstrongNumbers() {
    return;
  }
  int countNumber(int nbr) {
    int result = 0;
    while (nbr > 0) {
      nbr = (nbr / 10).round();
      result++;
    }
    return (result);
  }

  int pow(int x, int n) {
    int retval = 1;
    for (int i = 0; i < n; i++) {
      retval *= x;
    }

    return retval;
  }

  bool isArmstrongNumber(String strNbr) {
    //print("Fisrt IsNbr => $isNbr");
    int isNbr = int.parse(strNbr);
    int j = isNbr;
    int power = countNumber(isNbr);
    int result = 0;
    int i = 0;
    while (i < power) {
      //print("isNbr % 10 => ${isNbr % 10}");
      result += pow((isNbr % 10).round(), power);
      isNbr = isNbr - (isNbr % 10);
      //print("resuklt => $result / isNbrFloat => ${isNbr / 10}");
      isNbr = (isNbr / 10).round();
      //print("isNbr/ => $isNbr");
      i++;
    }
    if (result == j) return (true);
    return (false);
  }
}
