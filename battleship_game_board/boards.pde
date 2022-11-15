int[][] board = new int[5][4];

int[][] board1 = {
  {1, 1, 5, 0},
  {6, 3, 3, 0},
  {3, 3, 4, 1},
  {1, 8, 2, 0},
  {8, 5, 3, 1}
};

int[][] board2 = {
  {2, 1, 2, 0},
  {6, 2, 3, 0},
  {5, 7, 5, 0},
  {2, 5, 4, 1},
  {5, 3, 3, 1}
};

void fuc() { //choose random board
  int boardnum = int(random(1, 5.1));
  if (boardnum==1) {
    for (int i=0; i<5; i++) {
      for (int j=0; j<4; j++) {
        board[i][j]=board1[i][j];
      }
    }
  } else if (boardnum==2) {
    for (int i=0; i<5; i++) {
      for (int j=0; j<4; j++) {
        board[i][j]=board2[i][j];
      }
    }
  } else if (boardnum==3) {
    for (int i=0; i<5; i++) {
      for (int j=0; j<4; j++) {
        board[i][j]=board2[i][j];
      }
    }
  } else if (boardnum==4) {
    for (int i=0; i<5; i++) {
      for (int j=0; j<4; j++) {
        board[i][j]=board2[i][j];
      }
    }
  } else {
    for (int i=0; i<5; i++) {
      for (int j=0; j<4; j++) {
        board[i][j]=board2[i][j];
      }
    }
  }
}
