int[][] eboardm = new int[10][10];
int[][] eboard = new int[5][4];

void efuc() { //choose random board
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
  for (int i=0; i<10; i++) {
    for (int j=0; j<10; j++) {
      print(i+1,char(j+65), eboardm[i][j], " ");
    }
    println();
  }
  print(boardnum);
a1= eboardm[0][0];
a2= eboardm[1][0];
a3= eboardm[2][0];
a4= eboardm[3][0];
a5= eboardm[4][0];
a6= eboardm[5][0];
a7= eboardm[6][0];
a8= eboardm[7][0];
a9= eboardm[8][0];
a10= eboardm[9][0];

b1= eboardm[0][1];
b2= eboardm[1][1];
b3= eboardm[2][1];
b4= eboardm[3][1];
b5= eboardm[4][1];
b6= eboardm[5][1];
b7= eboardm[6][1];
b8= eboardm[7][1];
b9= eboardm[8][1];
b10= eboardm[9][1];

c1= eboardm[0][2];
c2= eboardm[1][2];
c3= eboardm[2][2];
c4= eboardm[3][2];
c5= eboardm[4][2];
c6= eboardm[5][2];
c7= eboardm[6][2];
c8= eboardm[7][2];
c9= eboardm[8][2];
c10= eboardm[9][2];

d1= eboardm[0][3];
d2= eboardm[1][3];
d3= eboardm[2][3];
d4= eboardm[3][3];
d5= eboardm[4][3];
d6= eboardm[5][3];
d7= eboardm[6][3];
d8= eboardm[7][3];
d9= eboardm[8][3];
d10= eboardm[9][3];

e1= eboardm[0][4];
e2= eboardm[1][4];
e3= eboardm[2][4];
e4= eboardm[3][4];
e5= eboardm[4][4];
e6= eboardm[5][4];
e7= eboardm[6][4];
e8= eboardm[7][4];
e9= eboardm[8][4];
e10= eboardm[9][4];

f1= eboardm[0][5];
f2= eboardm[1][5];
f3= eboardm[2][5];
f4= eboardm[3][5];
f5= eboardm[4][5];
f6= eboardm[5][5];
f7= eboardm[6][5];
f8= eboardm[7][5];
f9= eboardm[8][5];
f10= eboardm[9][5];

g1= eboardm[0][6];
g2= eboardm[1][6];
g3= eboardm[2][6];
g4= eboardm[3][6];
g5= eboardm[4][6];
g6= eboardm[5][6];
g7= eboardm[6][6];
g8= eboardm[7][6];
g9= eboardm[8][6];
g10= eboardm[9][6];

h1= eboardm[0][7];
h2= eboardm[1][7];
h3= eboardm[2][7];
h4= eboardm[3][7];
h5= eboardm[4][7];
h6= eboardm[5][7];
h7= eboardm[6][7];
h8= eboardm[7][7];
h9= eboardm[8][7];
h10= eboardm[9][7];

i1= eboardm[0][8];
i2= eboardm[1][8];
i3= eboardm[2][8];
i4= eboardm[3][8];
i5= eboardm[4][8];
i6= eboardm[5][8];
i7= eboardm[6][8];
i8= eboardm[7][8];
i9= eboardm[8][8];
i10= eboardm[9][8];

j1= eboardm[0][9];
j2= eboardm[1][9];
j3= eboardm[2][9];
j4= eboardm[3][9];
j5= eboardm[4][9];
j6= eboardm[5][9];
j7= eboardm[6][9];
j8= eboardm[7][9];
j9= eboardm[8][9];
j10= eboardm[9][9];
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
