
int a1= 1;
int a2= 1;
int a3= 1;
int a4= 1;
int a5= 1;
int a6= 0;
int a7= 0;
int a8= 0;
int a9= 0;
int a10= 0;

int b1= 0;
int b2= 0;
int b3= 0;
int b4= 0;
int b5= 0;
int b6= 0;
int b7= 0;
int b8= 0;
int b9= 0;
int b10= 0;

int c1= 0;
int c2= 0;
int c3= 0;
int c4= 0;
int c5= 0;
int c6= 0;
int c7= 0;
int c8= 0;
int c9= 0;
int c10= 0;

int d1= 0;
int d2= 0;
int d3= 0;
int d4= 0;
int d5= 0;
int d6= 0;
int d7= 0;
int d8= 0;
int d9= 0;
int d10= 0;

int e1= 0;
int e2= 0;
int e3= 0;
int e4= 0;
int e5= 0;
int e6= 0;
int e7= 0;
int e8= 0;
int e9= 0;
int e10= 0;

int f1= 0;
int f2= 0;
int f3= 0;
int f4= 0;
int f5= 0;
int f6= 0;
int f7= 0;
int f8= 0;
int f9= 0;
int f10= 0;

int g1= 0;
int g2= 0;
int g3= 0;
int g4= 0;
int g5= 0;
int g6= 0;
int g7= 0;
int g8= 0;
int g9= 0;
int g10= 0;

int h1= 0;
int h2= 0;
int h3= 0;
int h4= 0;
int h5= 0;
int h6= 0;
int h7= 0;
int h8= 0;
int h9= 0;
int h10= 0;

int i1= 0;
int i2= 0;
int i3= 0;
int i4= 0;
int i5= 0;
int i6= 0;
int i7= 0;
int i8= 0;
int i9= 0;
int i10= 0;

int j1= 0;
int j2= 0;
int j3= 0;
int j4= 0;
int j5= 0;
int j6= 0;
int j7= 0;
int j8= 0;
int j9= 0;
int j10= 0;
PImage splash;
PImage fire; /* her og i void setup definerer jeg en variabel "fire" som loader en image kun en gang i stedet
 for at gøre det i void draw for hver gang man trykker på en af clickboxes...jeg fand ud af at på den måde undgår man
 lags som opståede da jeg havde skrevet : ,,PImage fire=loadImage(fire.png),, hver han foran resize ind i void draw... (kig på linje 656,662,668 */

void setup() {
  fuc();
  efuc();
  
  println();
  for (int i=0; i<10; i++) {
    for (int j=0; j<10; j++) {
      print(char(i+65), j+1, eboardm[i][j], " ");
    }
    println();
  }
  fire=loadImage("fire.png");
     splash=loadImage("splash.png");
 

  background(/*220, 240, 100*/255);
  fullScreen();
  //fullScreen();
  stroke(0);
  strokeWeight(2);
  //creative game title design :
  PImage fire= loadImage("fire.png");
  /* PImage ocean_background=loadImage("ocean_background.png");
   image(ocean_background,0,0);*/  // nie dobrze to wyglada
  tint(255, 127);// 127-50% opacity
  PImage ocean2= loadImage("ocean2.png");
  ocean2.resize(1700, 0);
  image(ocean2, 100, 230);
  tint(255, 255);//255-back to 100% opacity
  PImage goodwave= loadImage("good_wave.png");
  goodwave.resize(1000, 0);
  image(goodwave, 650, -30);
  tint(255, 127);// 127-50% opacity
  PImage ocean1= loadImage("ocean1.png");
  ocean1.resize(1700, 0);
  image(ocean1, 1050, 230);
  tint(255, 255);//255-back to 100% opacity
  fill(0);
  textSize(100);
  text("Battle Shi    s", width/2.8, 100);
  PImage pirat_ship= loadImage("pirat_ship.png");
  pirat_ship.resize(202, 0);
  image(pirat_ship, 1030, 10);
  PImage wave= loadImage("wave.png");
  wave.resize(500, 0);
  image(wave, 1000, 50);
}



void draw() {
  game_board();
  ild();
  target_missed();
}


void game_board() {
  //                                                                      left gridsystem
  for (int i = 0; i < 751; i = i + 75) {
    line(100, 305, 175, 305);
    pushMatrix();
    translate(100, 230);
    line(0, i, 750, i);
    line(i, 0, i, 750);
    fill(0);
    popMatrix();
    //                                                                    right gridsystem
    pushMatrix();
    translate(1050, 230);
    line(0, i, 750, i);
    line(i, 0, i, 750);
    fill(0);
    popMatrix();

    //                                                                    leftside Numbers
    for (int k=1; k<10; k++) {
      textSize(50);
      text(k, 55, 205+k*75);
    }
    textSize(50);
    text("10", 42, 205+(75*10));
  }

  //                                                                      rightside numbers
  pushMatrix();
  translate(950, 0);
  for (int k=1; k<10; k++) {
    textSize(50);
    text(k, 55, 205+k*75);
  }
  textSize(50);
  text("10", 42, 205+(75*10));
  popMatrix();

  //                                                                      text on left side
  for (char k=1; k<10; k++) {
    textSize(50);
    text(char(k+64), 50+k*75, 225);
  }
  textSize(50);
  text("J", 50+10*75, 225);

  //                                                                      text on right side
  pushMatrix();
  translate(950, 0);
  for (char k=1; k<10; k++) {
    textSize(50);
    text(char(k+64), 50+k*75, 225);
  }
  textSize(50);
  text("J", 50+10*75, 225);
  popMatrix();
}




void mouseClicked() {
  float x=mouseX;
  float y=mouseY;
  /////////////////////////////////////////////////////     A  CLICK BOXES     ////////////////////////////////////////////////////////
  //a1
  if ((x>100&&x<100+(75*1))&&(y>230&&y<230+(75*1))) {
    a1=a1+2;
  }
  //a2
  if ((x>100&&x<100+(75*1))&&(y>230+(75*1)&&y<230+(75*2))) {
    a2=a2+2;
  }
  //a3
  if ((x>100&&x<100+(75*1))&&(y>230+(75*2)&&y<230+(75*3))) {
    a3=a3+2;
  }
  //a4
  if ((x>100&&x<100+(75*1))&&(y>230+(75*3)&&y<230+(75*4))) {
    a4=a4+2;
  }
  //a5
  if ((x>100&&x<100+(75*1))&&(y>230+(75*4)&&y<230+(75*5))) {
    a5=a5+2;
  }
  //a6
  if ((x>100&&x<100+(75*1))&&(y>230+(75*5)&&y<230+(75*6))) {
    a6=a6+2;
  }
  //a7
  if ((x>100&&x<100+(75*1))&&(y>230+(75*6)&&y<230+(75*7))) {
    a7=a7+2;
  }
  //a8
  if ((x>100&&x<100+(75*1))&&(y>230+(75*7)&&y<230+(75*8))) {
    a8=a8+2;
  }
  //a9
  if ((x>100&&x<100+(75*1))&&(y>230+(75*8)&&y<230+(75*9))) {
    a9=a9+2;
  }
  //a10
  if ((x>100&&x<100+(75*1))&&(y>230+(75*9)&&y<230+(75*10))) {
    a10=a10+2;
  }
  /////////////////////////////////////////////////////     B  CLICK BOXES     ////////////////////////////////////////////////////////
  //b1
  if ((x>100+(75*1)&&x<100+(75*2))&&(y>230&&y<230+(75*1))) {
    b1=b1+2;
  }
  //b2
  if ((x>100+(75*1)&&x<100+(75*2))&&(y>230+(75*1)&&y<230+(75*2))) {
    b2=b2+2;
  }
  //b3
  if ((x>100+(75*1)&&x<100+(75*2))&&(y>230+(75*2)&&y<230+(75*3))) {
    b3=b3+2;
  }
  //b4
  if ((x>100+(75*1)&&x<100+(75*2))&&(y>230+(75*3)&&y<230+(75*4))) {
    b4=b4+2;
  }
  //b5
  if ((x>100+(75*1)&&x<100+(75*2))&&(y>230+(75*4)&&y<230+(75*5))) {
    b5=b5+2;
  }
  //b6
  if ((x>100+(75*1)&&x<100+(75*2))&&(y>230+(75*5)&&y<230+(75*6))) {
    b6=b6+2;
  }
  //b7
  if ((x>100+(75*1)&&x<100+(75*2))&&(y>230+(75*6)&&y<230+(75*7))) {
    b7=b7+2;
  }
  //b8
  if ((x>100+(75*1)&&x<100+(75*2))&&(y>230+(75*7)&&y<230+(75*8))) {
    b8=b8+2;
  }
  //b9
  if ((x>100+(75*1)&&x<100+(75*2))&&(y>230+(75*8)&&y<230+(75*9))) {
    b9=b9+2;
  }
  //b10
  if ((x>100+(75*1)&&x<100+(75*2))&&(y>230+(75*9)&&y<230+(75*10))) {
    b10=b10+2;
  }
  /////////////////////////////////////////////////////     C   CLICK BOXES     ////////////////////////////////////////////////////////
  //c1
  if ((x>100+(75*2)&&x<100+(75*3))&&(y>230&&y<230+(75*1))) {
    c1=c1+2;
  }
  //c2
  if ((x>100+(75*2)&&x<100+(75*3))&&(y>230+(75*1)&&y<230+(75*2))) {
    c2=c2+2;
  }
  //c3
  if ((x>100+(75*2)&&x<100+(75*3))&&(y>230+(75*2)&&y<230+(75*3))) {
    c3=c3+2;
  }
  //c4
  if ((x>100+(75*2)&&x<100+(75*3))&&(y>230+(75*3)&&y<230+(75*4))) {
    c4=c4+2;
  }
  //c5
  if ((x>100+(75*2)&&x<100+(75*3))&&(y>230+(75*4)&&y<230+(75*5))) {
    c5=c5+2;
  }
  //c6
  if ((x>100+(75*2)&&x<100+(75*3))&&(y>230+(75*5)&&y<230+(75*6))) {
    c6=c6+2;
  }
  //c7
  if ((x>100+(75*2)&&x<100+(75*3))&&(y>230+(75*6)&&y<230+(75*7))) {
    c7=c7+2;
  }
  //c8
  if ((x>100+(75*2)&&x<100+(75*3))&&(y>230+(75*7)&&y<230+(75*8))) {
    c8=c8+2;
  }
  //c9
  if ((x>100+(75*2)&&x<100+(75*3))&&(y>230+(75*8)&&y<230+(75*9))) {
    c9=c9+2;
  }
  //c10
  if ((x>100+(75*2)&&x<100+(75*3))&&(y>230+(75*9)&&y<230+(75*10))) {
    c10=c10+2;
  }
  /////////////////////////////////////////////////////     D  CLICK BOXES     ////////////////////////////////////////////////////////
  //d1
  if ((x>100+(75*3)&&x<100+(75*4))&&(y>230&&y<230+(75*1))) {
    d1=d1+2;
  }
  //d2
  if ((x>100+(75*3)&&x<100+(75*4))&&(y>230+(75*1)&&y<230+(75*2))) {
    d2=d2+2;
  }
  //d3
  if ((x>100+(75*3)&&x<100+(75*4))&&(y>230+(75*2)&&y<230+(75*3))) {
    d3=d3+2;
  }
  //d4
  if ((x>100+(75*3)&&x<100+(75*4))&&(y>230+(75*3)&&y<230+(75*4))) {
    d4=d4+2;
  }
  //d5
  if ((x>100+(75*3)&&x<100+(75*4))&&(y>230+(75*4)&&y<230+(75*5))) {
    d5=d5+2;
  }
  //d6
  if ((x>100+(75*3)&&x<100+(75*4))&&(y>230+(75*5)&&y<230+(75*6))) {
    d6=d6+2;
  }
  //d7
  if ((x>100+(75*3)&&x<100+(75*4))&&(y>230+(75*6)&&y<230+(75*7))) {
    d7=d7+2;
  }
  //d8
  if ((x>100+(75*3)&&x<100+(75*4))&&(y>230+(75*7)&&y<230+(75*8))) {
    d8=d8+2;
  }
  //d9
  if ((x>100+(75*3)&&x<100+(75*4))&&(y>230+(75*8)&&y<230+(75*9))) {
    d9=d9+2;
  }
  //d10
  if ((x>100+(75*3)&&x<100+(75*4))&&(y>230+(75*9)&&y<230+(75*10))) {
    d10=d10+2;
  }
  /////////////////////////////////////////////////////     E  CLICK BOXES     ////////////////////////////////////////////////////////
  //e1
  if ((x>100+(75*4)&&x<100+(75*5))&&(y>230&&y<230+(75*1))) {
    e1=e1+2;
  }
  //e2
  if ((x>100+(75*4)&&x<100+(75*5))&&(y>230+(75*1)&&y<230+(75*2))) {
    e2=e2+2;
  }
  //e3
  if ((x>100+(75*4)&&x<100+(75*5))&&(y>230+(75*2)&&y<230+(75*3))) {
    e3=e3+2;
  }
  //e4
  if ((x>100+(75*4)&&x<100+(75*5))&&(y>230+(75*3)&&y<230+(75*4))) {
    e4=e4+2;
  }
  //e5
  if ((x>100+(75*4)&&x<100+(75*5))&&(y>230+(75*4)&&y<230+(75*5))) {
    e5=e5+2;
  }
  //e6
  if ((x>100+(75*4)&&x<100+(75*5))&&(y>230+(75*5)&&y<230+(75*6))) {
    e6=e6+2;
  }
  //e7
  if ((x>100+(75*4)&&x<100+(75*5))&&(y>230+(75*6)&&y<230+(75*7))) {
    e7=e7+2;
  }
  //e8
  if ((x>100+(75*4)&&x<100+(75*5))&&(y>230+(75*7)&&y<230+(75*8))) {
    e8=e8+2;
  }
  //e9
  if ((x>100+(75*4)&&x<100+(75*5))&&(y>230+(75*8)&&y<230+(75*9))) {
    e9=e9+2;
  }
  //e10
  if ((x>100+(75*4)&&x<100+(75*5))&&(y>230+(75*9)&&y<230+(75*10))) {
    e10=e10+2;
  }
  /////////////////////////////////////////////////////     F  CLICK BOXES     ////////////////////////////////////////////////////////
  //f1
  if ((x>100+(75*5)&&x<100+(75*6))&&(y>230&&y<230+(75*1))) {
    f1=f1+2;
  }
  //f2
  if ((x>100+(75*5)&&x<100+(75*6))&&(y>230+(75*1)&&y<230+(75*2))) {
    f2=f2+2;
  }
  //f3
  if ((x>100+(75*5)&&x<100+(75*6))&&(y>230+(75*2)&&y<230+(75*3))) {
    f3=f3+2;
  }
  //f4
  if ((x>100+(75*5)&&x<100+(75*6))&&(y>230+(75*3)&&y<230+(75*4))) {
    f4=f4+2;
  }
  //f5
  if ((x>100+(75*5)&&x<100+(75*6))&&(y>230+(75*4)&&y<230+(75*5))) {
    f5=f5+2;
  }
  //f6
  if ((x>100+(75*5)&&x<100+(75*6))&&(y>230+(75*5)&&y<230+(75*6))) {
    f6=f6+2;
  }
  //f7
  if ((x>100+(75*5)&&x<100+(75*6))&&(y>230+(75*6)&&y<230+(75*7))) {
    f7=f7+2;
  }
  //f8
  if ((x>100+(75*5)&&x<100+(75*6))&&(y>230+(75*7)&&y<230+(75*8))) {
    f8=f8+2;
  }
  //f9
  if ((x>100+(75*5)&&x<100+(75*6))&&(y>230+(75*8)&&y<230+(75*9))) {
    f9=f9+2;
  }
  //f10
  if ((x>100+(75*5)&&x<100+(75*6))&&(y>230+(75*9)&&y<230+(75*10))) {
    f10=f10+2;
  }
  /////////////////////////////////////////////////////     G  CLICK BOXES     ////////////////////////////////////////////////////////
  //g1
  if ((x>100+(75*6)&&x<100+(75*7))&&(y>230&&y<230+(75*1))) {
    g1=g1+2;
  }
  //g2
  if ((x>100+(75*6)&&x<100+(75*7))&&(y>230+(75*1)&&y<230+(75*2))) {
    g2=g2+2;
  }
  //g3
  if ((x>100+(75*6)&&x<100+(75*7))&&(y>230+(75*2)&&y<230+(75*3))) {
    g3=g3+2;
  }
  //g4
  if ((x>100+(75*6)&&x<100+(75*7))&&(y>230+(75*3)&&y<230+(75*4))) {
    g4=g4+2;
  }
  //g5
  if ((x>100+(75*6)&&x<100+(75*7))&&(y>230+(75*4)&&y<230+(75*5))) {
    g5=g5+2;
  }
  //g6
  if ((x>100+(75*6)&&x<100+(75*7))&&(y>230+(75*5)&&y<230+(75*6))) {
    g6=g6+2;
  }
  //g7
  if ((x>100+(75*6)&&x<100+(75*7))&&(y>230+(75*6)&&y<230+(75*7))) {
    g7=g7+2;
  }
  //g8
  if ((x>100+(75*6)&&x<100+(75*7))&&(y>230+(75*7)&&y<230+(75*8))) {
    g8=g8+2;
  }
  //g9
  if ((x>100+(75*6)&&x<100+(75*7))&&(y>230+(75*8)&&y<230+(75*9))) {
    g9=g9+2;
  }
  //g10
  if ((x>100+(75*6)&&x<100+(75*7))&&(y>230+(75*9)&&y<230+(75*10))) {
    g10=g10+2;
  }
  /////////////////////////////////////////////////////     H  CLICK BOXES     ////////////////////////////////////////////////////////
  //h1
  if ((x>100+(75*7)&&x<100+(75*8))&&(y>230&&y<230+(75*1))) {
    h1=h1+2;
  }
  //h2
  if ((x>100+(75*7)&&x<100+(75*8))&&(y>230+(75*1)&&y<230+(75*2))) {
    h2=h2+2;
  }
  //h3
  if ((x>100+(75*7)&&x<100+(75*8))&&(y>230+(75*2)&&y<230+(75*3))) {
    h3=h3+2;
  }
  //h4
  if ((x>100+(75*7)&&x<100+(75*8))&&(y>230+(75*3)&&y<230+(75*4))) {
    h4=h4+2;
  }
  //h5
  if ((x>100+(75*7)&&x<100+(75*8))&&(y>230+(75*4)&&y<230+(75*5))) {
    h5=h5+2;
  }
  //h6
  if ((x>100+(75*7)&&x<100+(75*8))&&(y>230+(75*5)&&y<230+(75*6))) {
    h6=h6+2;
  }
  //h7
  if ((x>100+(75*7)&&x<100+(75*8))&&(y>230+(75*6)&&y<230+(75*7))) {
    h7=h7+2;
  }
  //h8
  if ((x>100+(75*7)&&x<100+(75*8))&&(y>230+(75*7)&&y<230+(75*8))) {
    h8=h8+2;
  }
  //h9
  if ((x>100+(75*7)&&x<100+(75*8))&&(y>230+(75*8)&&y<230+(75*9))) {
    h9=h9+2;
  }
  //h10
  if ((x>100+(75*7)&&x<100+(75*8))&&(y>230+(75*9)&&y<230+(75*10))) {
    h10=h10+2;
  }
  /////////////////////////////////////////////////////     I  CLICK BOXES     ////////////////////////////////////////////////////////
  //i1
  if ((x>100+(75*8)&&x<100+(75*9))&&(y>230&&y<230+(75*1))) {
    i1=i1+2;
  }
  //i2
  if ((x>100+(75*8)&&x<100+(75*9))&&(y>230+(75*1)&&y<230+(75*2))) {
    i2=i2+2;
  }
  //i3
  if ((x>100+(75*8)&&x<100+(75*9))&&(y>230+(75*2)&&y<230+(75*3))) {
    i3=i3+2;
  }
  //i4
  if ((x>100+(75*8)&&x<100+(75*9))&&(y>230+(75*3)&&y<230+(75*4))) {
    i4=i4+2;
  }
  //i5
  if ((x>100+(75*8)&&x<100+(75*9))&&(y>230+(75*4)&&y<230+(75*5))) {
    i5=i5+2;
  }
  //i6
  if ((x>100+(75*8)&&x<100+(75*9))&&(y>230+(75*5)&&y<230+(75*6))) {
    i6=i6+2;
  }
  //i7
  if ((x>100+(75*8)&&x<100+(75*9))&&(y>230+(75*6)&&y<230+(75*7))) {
    i7=i7+2;
  }
  //i8
  if ((x>100+(75*8)&&x<100+(75*9))&&(y>230+(75*7)&&y<230+(75*8))) {
    i8=i8+2;
  }
  //i9
  if ((x>100+(75*8)&&x<100+(75*9))&&(y>230+(75*8)&&y<230+(75*9))) {
    i9=i9+2;
  }
  //i10
  if ((x>100+(75*8)&&x<100+(75*9))&&(y>230+(75*9)&&y<230+(75*10))) {
    i10=i10+2;
  }
  /////////////////////////////////////////////////////     J  CLICK BOXES     ////////////////////////////////////////////////////////
  //j1
  if ((x>100+(75*9)&&x<100+(75*10))&&(y>230&&y<230+(75*1))) {
    j1=j1+2;
  }
  //j2
  if ((x>100+(75*9)&&x<100+(75*10))&&(y>230+(75*1)&&y<230+(75*2))) {
    j2=j2+2;
  }
  //j3
  if ((x>100+(75*9)&&x<100+(75*10))&&(y>230+(75*2)&&y<230+(75*3))) {
    j3=j3+2;
  }
  //j4
  if ((x>100+(75*9)&&x<100+(75*10))&&(y>230+(75*3)&&y<230+(75*4))) {
    j4=j4+2;
  }
  //j5
  if ((x>100+(75*9)&&x<100+(75*10))&&(y>230+(75*4)&&y<230+(75*5))) {
    j5=j5+2;
  }
  //j6
  if ((x>100+(75*9)&&x<100+(75*10))&&(y>230+(75*5)&&y<230+(75*6))) {
    j6=j6+2;
  }
  //j7
  if ((x>100+(75*9)&&x<100+(75*10))&&(y>230+(75*6)&&y<230+(75*7))) {
    j7=j7+2;
  }
  //j8
  if ((x>100+(75*9)&&x<100+(75*10))&&(y>230+(75*7)&&y<230+(75*8))) {
    j8=j8+2;
  }
  //j9
  if ((x>100+(75*9)&&x<100+(75*10))&&(y>230+(75*8)&&y<230+(75*9))) {
    j9=j9+2;
  }
  //j10
  if ((x>100+(75*9)&&x<100+(75*10))&&(y>230+(75*9)&&y<230+(75*10))) {
    j10=j10+2;
  }


 
}
