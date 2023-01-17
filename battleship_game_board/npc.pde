int[][] npc(){
  int row = int(random(0,10));
  int colm = int(random(0,10));
  
  if (boardm[row][colm]>=2){
   npc(); 
  }
  else {
    if (boardm[row][colm]==1||boardm[row][colm]==3){
      boardm[row][colm] = 3;
    }
    if (boardm[row][colm]==0||boardm[row][colm]==2){
      boardm[row][colm] = 2;
    }
  }
  ewin(boardm);
  return boardm;
}
