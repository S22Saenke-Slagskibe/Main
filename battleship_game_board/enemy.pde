
int[][] eboard = new int[5][4];

int[][] efuc() { //choose random board
  int boardnum = int(random(1, 7));
if (boardnum==1) {
    for (int i=0; i<5; i++) {
      for (int j=0; j<4; j++) {
        eboard[i][j]=board1[i][j];
      }
    }
  } else if (boardnum==2) {
    for (int i=0; i<5; i++) {
      for (int j=0; j<4; j++) {
        eboard[i][j]=board2[i][j];
      }
    }
  } else if (boardnum==3) {
    for (int i=0; i<5; i++) {
      for (int j=0; j<4; j++) {
        eboard[i][j]=board3[i][j];
      }
    }
  } else if (boardnum==4) {
    for (int i=0; i<5; i++) {
      for (int j=0; j<4; j++) {
        eboard[i][j]=board4[i][j];
      }
    }
  } else if (boardnum==5) {
    for (int i=0; i<5; i++) {
      for (int j=0; j<4; j++) {
        eboard[i][j]=board5[i][j];
      }
    }
  } else {
    for (int i=0; i<5; i++) {
      for (int j=0; j<4; j++) {
        eboard[i][j]=board6[i][j];
      }
    }
  }
  int[][] eboardm = resboard(eboard);
  println();
  println(boardnum);
  return(eboardm);
}


int[][] resboard(int[][] array) {
  int[][] resboard = new int[10][10];
  int[] en1 = ships(array[0][0],array[0][1],array[0][2],array[0][3]);
  int[] en2 = ships(array[1][0],array[1][1],array[1][2],array[1][3]);
  int[] en3 = ships(array[2][0],array[2][1],array[2][2],array[2][3]);
  int[] en4 = ships(array[3][0],array[3][1],array[3][2],array[3][3]);
  int[] en5 = ships(array[4][0],array[4][1],array[4][2],array[4][3]);
  
  for(int i=0;i<(en1.length/2);i++) {
    resboard[en1[i*2+1]][en1[2*i]] = 1;
  }
  println();
  for(int i=0;i<(en2.length/2);i++) {
    resboard[en2[2*i+1]][en2[2*i]] = 1;
  }
  println();
  for(int i=0;i<(en3.length/2);i++) {
    resboard[en3[2*i+1]][en3[2*i]] = 1;
  }
  println();
  for(int i=0;i<(en4.length/2);i++) {
    resboard[en4[2*i+1]][en4[2*i]] = 1;
  }
  println();
  for(int i=0;i<(en5.length/2);i++) {
    resboard[en5[2*i+1]][en5[2*i]] = 1;
  }

  return resboard;
}
