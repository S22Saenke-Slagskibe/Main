void win(){
 
  if (a1 == 1){
    return;
  }
  if (a2 == 1){
    return;
  }
  if (a3 == 1){
    return;
  }
  if (a4 == 1){
    return;
  }
  if (a5 == 1){
    return;
  }
  if (a6 == 1){
    return;
  }
  if (a7 == 1){
    return;
  }
  if (a8 == 1){
    return;
  }
  if (a9 == 1){
    return;
  }
  if (a10 == 1){
    return;
  }
  //*************************** B-sektor
    if (b1 == 1){
    return;
  }
  if (b2 == 1){
    return;
  }
  if (b3 == 1){
    return;
  }
  if (b4 == 1){
    return;
  }
  if (b5 == 1){
    return;
  }
  if (b6 == 1){
    return;
  }
  if (b7 == 1){
    return;
  }
  if (b8 == 1){
    return;
  }
  if (b9 == 1){
    return;
  }
  if (b10 == 1){
    return;
  }
  //*************************** C-sektor
    if (c1 == 1){
    return;
  }
  if (c2 == 1){
    return;
  }
  if (c3 == 1){
    return;
  }
  if (c4 == 1){
    return;
  }
  if (c5 == 1){
    return;
  }
  if (c6 == 1){
    return;
  }
  if (c7 == 1){
    return;
  }
  if (c8 == 1){
    return;
  }
  if (c9 == 1){
    return;
  }
  if (c10 == 1){
    return;
  }
  //*************************** d-sektor
    if (d1 == 1){
    return;
  }
  if (d2 == 1){
    return;
  }
  if (d3 == 1){
    return;
  }
  if (d4 == 1){
    return;
  }
  if (d5 == 1){
    return;
  }
  if (d6 == 1){
    return;
  }
  if (d7 == 1){
    return;
  }
  if (d8 == 1){
    return;
  }
  if (d9 == 1){
    return;
  }
  if (d10 == 1){
    return;
  }
  //*************************** e-sektor
    if (e1 == 1){
    return;
  }
  if (e2 == 1){
    return;
  }
  if (e3 == 1){
    return;
  }
  if (e4 == 1){
    return;
  }
  if (e5 == 1){
    return;
  }
  if (e6 == 1){
    return;
  }
  if (e7 == 1){
    return;
  }
  if (e8 == 1){
    return;
  }
  if (e9 == 1){
    return;
  }
  if (e10 == 1){
    return;
  }
  //*************************** f-sektor
    if (f1 == 1){
    return;
  }
  if (f2 == 1){
    return;
  }
  if (f3 == 1){
    return;
  }
  if (f4 == 1){
    return;
  }
  if (f5 == 1){
    return;
  }
  if (f6 == 1){
    return;
  }
  if (f7 == 1){
    return;
  }
  if (f8 == 1){
    return;
  }
  if (f9 == 1){
    return;
  }
  if (f10 == 1){
    return;
  }
  //*************************** g-sektor
    if (g1 == 1){
    return;
  }
  if (g2 == 1){
    return;
  }
  if (g3 == 1){
    return;
  }
  if (g4 == 1){
    return;
  }
  if (g5 == 1){
    return;
  }
  if (g6 == 1){
    return;
  }
  if (g7 == 1){
    return;
  }
  if (g8 == 1){
    return;
  }
  if (g9 == 1){
    return;
  }
  if (g10 == 1){
    return;
  }
  //*************************** h-sektor
    if (h1 == 1){
    return;
  }
  if (h2 == 1){
    return;
  }
  if (h3 == 1){
    return;
  }
  if (h4 == 1){
    return;
  }
  if (h5 == 1){
    return;
  }
  if (h6 == 1){
    return;
  }
  if (h7 == 1){
    return;
  }
  if (h8 == 1){
    return;
  }
  if (h9 == 1){
    return;
  }
  if (h10 == 1){
    return;
  }
  //*************************** i-sektor
    if (i1 == 1){
    return;
  }
  if (i2 == 1){
    return;
  }
  if (i3 == 1){
    return;
  }
  if (i4 == 1){
    return;
  }
  if (i5 == 1){
    return;
  }
  if (i6 == 1){
    return;
  }
  if (i7 == 1){
    return;
  }
  if (i8 == 1){
    return;
  }
  if (i9 == 1){
    return;
  }
  if (i10 == 1){
    return;
  }
  //*************************** j-sektor
    if (j1 == 1){
    return;
  }
  if (j2 == 1){
    return;
  }
  if (j3 == 1){
    return;
  }
  if (j4 == 1){
    return;
  }
  if (j5 == 1){
    return;
  }
  if (j6 == 1){
    return;
  }
  if (j7 == 1){
    return;
  }
  if (j8 == 1){
    return;
  }
  if (j9 == 1){
    return;
  }
  if (j10 == 1){
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
