
int[] pship(int j) { //place ships and create shiparray
  int x_ = board[j][0];
  int y_ = board[j][1];
  int len_ = board[j][2];
  int dir_ = board[j][3];
  if(dir_==0){
    hbaad(x_,y_,len_);
  } else {
    vbaad(x_,y_,len_);
  }
  return ships(x_,y_,len_,dir_);
}
void hbaad(int x, int y, int len) { //horizontal båd, parametre: hbaad(startfeltnummer horizontalt (minus 1), startfeltnummer vertikalt (minus 1), længde af båd)
  pushMatrix();
  translate(1050, 230);
  rect(x*75, y*75, 75*len, 75);
  popMatrix();
}
void vbaad(int x, int y, int len) { //vertikal båd, parametre: hbaad(startfeltnummer horizontalt (minus 1), startfeltnummer vertikalt (minus 1), længde af båd)
  pushMatrix();
  translate(1050, 230);
  rect(x*75, y*75, 75, 75*len);
  popMatrix();
}

int[] ships(int x, int y, int len, int dir) { //laver array med feltnumre for alle felter et skib går gennem. x, y er startfelter minus en, len er længden på skib, dir: 0 = horizontalt, ellers vertikalt.
  int[] ship = new int[2*len];
  if (dir==0) {
    for (int i=0; i<len; i++) {
      ship[i*2] = x+i;
      ship[i*2+1] = y;
    }
  } else {
    for (int i=0; i<len; i++) {
      ship[i*2] = x;
      ship[i*2+1] = y+i;
    }
  }
  return ship;
}
