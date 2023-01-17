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

int[][] board3 = {
  {0, 0, 2, 1},
  {3, 2, 3, 1},
  {7, 2, 4, 1},
  {1, 8, 5, 0},
  {7, 9, 3, 0}
};

int[][] board4 = {
  {1, 1, 3, 0},
  {8, 1, 5, 1},
  {0, 4, 3, 1},
  {5, 5, 4, 1},
  {8, 8, 2, 0}
};

int[][] board5 = {
  {0, 0, 2, 0},
  {2, 3, 5, 0},
  {5, 1, 4, 0},
  {2, 8, 3, 0},
  {7, 5, 3, 1}
};

int[][] board6 = {
  {5, 0, 4, 0},
  {2, 2, 5, 0},
  {3, 4, 3, 1},
  {6, 5, 3, 1},
  {8, 5, 2, 1}
};

int[][] fuc() { //choose random board
  int boardnum = int(random(1, 7));
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
        board[i][j]=board3[i][j];
      }
    }
  } else if (boardnum==4) {
    for (int i=0; i<5; i++) {
      for (int j=0; j<4; j++) {
        board[i][j]=board4[i][j];
      }
    }
  } else if (boardnum==5) {
    for (int i=0; i<5; i++) {
      for (int j=0; j<4; j++) {
        board[i][j]=board5[i][j];
      }
    }
  } else {
    for (int i=0; i<5; i++) {
      for (int j=0; j<4; j++) {
        board[i][j]=board6[i][j];
      }
    }
  }
  int[][] boardm = resboard(board); 
  return (boardm);
}
