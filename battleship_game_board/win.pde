void win(){
  if (a1 == 1){
    return;
  }
  print("won");
  win = 1;
}

void ewin(int[][] array){
  for (int i=0; i<10; i++) {
    for (int j=0; j<10; j++) {
      if (array[i][j] == 1){
        return;
      }
    }
  }
  print("lost");
  win = 2;
}

void test(int[][] array){
  println();
  for (int i=0; i<10; i++) {
    for (int j=0; j<10; j++) {
      print(i+1,char(j+65), array[i][j], " ");
    }
    println();
  }
}
