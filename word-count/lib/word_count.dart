class WordCount {
  // Put your code here
  Map<String, int> countWords(String words) {
    Map<String, int> lst = {};
    RegExp wordRegex =
        RegExp(r"([a-z]+('[a-z])?)|([0-9]+)", caseSensitive: false);

    wordRegex.allMatches(words).forEach((element) {
      String word = element[0]!.toLowerCase();
      if (lst[word] != null) {
        lst[word] = lst[word]! + 1;
      } else {
        lst[word] = 1;
      }
    });
    return lst;
  }
}
