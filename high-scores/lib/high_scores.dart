class HighScores {
  List<int> scores = [0];
  int highScore = 0;
  HighScores(List<int> lst){
	  scores = lst;
  }
  int latest(){
    return (scores[scores.length - 1]);
  }
  int personalBest(){
    int i = 0;
    while (i < scores.length){
      if (scores[i] > highScore){
        highScore = scores[i];
      }
      i++;
    }
    return (highScore);
  }
  List personalTopThree(){
    int top1 = personalBest();
    int top2 = 0;
    int top3 = 0;
    int i = 0;
    while (i < scores.length){
      if ((scores[i] != top1) && top2 < scores[i]){
        top2 = scores[i];
      }
      i++;
    }
    i = 0;
    while(i < scores.length){
      if ((scores[i] != top2) && (scores[i] != top1) && top3 < scores[i]){
        top3 = scores[i];
      }
      i++;
    }
    return [top1, top2, top3];
  }
  
  // Put your code here
}