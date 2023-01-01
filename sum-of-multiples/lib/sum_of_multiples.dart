class SumOfMultiples {
  // Put your code here
  int sum(List<int> array, int nbr) {
    int i = 1;
    int result = 0;
    while (i < nbr) {
      int j = 0;
      while (j < array.length) {
        if (i % array[j] == 0) {
          //print("i => $i && j => ${array[j]}");
          result += i;
          break;
        }
        j++;
      }
      i++;
    }
    return result;
  }
}
