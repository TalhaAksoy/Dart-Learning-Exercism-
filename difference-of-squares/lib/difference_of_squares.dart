class DifferenceOfSquares {
  // Put your code here
  int pow(int x, int n) {
    int retval = 1;
    for (int i = 0; i < n; i++) {
      retval *= x;
    }

    return retval;
  }
  //toplamin karesi
  int squareOfSum(int nbr){
    int i = 1;
    int result = 0;
    while (i <= nbr){
      result += i;
      i++;
    }
    return (pow(result, 2));
  }
  //karelerin toplami
  int sumOfSquares(int nbr){
    int i = 1;
    int result = 0;
    while(i <= nbr){
      result += pow(i, 2);
      i++;
    }
    return (result);
  }
  //farklari
  int differenceOfSquares(int nbr){
    return (squareOfSum(nbr) - sumOfSquares(nbr));
  }
}