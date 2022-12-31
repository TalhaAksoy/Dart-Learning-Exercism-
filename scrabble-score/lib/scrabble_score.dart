// Put your code here
int score(String str) {
  int i = 0;
  int result = 0;
  while (i < str.length) {
    String char = str[i].toUpperCase();
    if (char == "A" ||
        char == "E" ||
        char == "I" ||
        char == "O" ||
        char == "U" ||
        char == "L" ||
        char == "N" ||
        char == "R" ||
        char == "S" ||
        char == "T") {
      result += 1;
    } else if (char == "D" || char == "G") {
      result += 2;
    } else if (char == "B" || char == "C" || char == "M" || char == "P") {
      result += 3;
    } else if (char == "F" ||
        char == "H" ||
        char == "V" ||
        char == "M" ||
        char == "Y") {
      result += 4;
    } else if (char == "K") {
      result += 5;
    } else if (char == "J" || char == "X") {
      result += 8;
    } else if (char == "Q" || char == "Z") {
      result += 10;
    }
    i++;
  }
  return result;
}
