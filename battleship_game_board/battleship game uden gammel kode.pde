
boolean A1=false;
boolean A2=false;
boolean A3=false;
boolean A4=false;
boolean A5=false;
boolean A6=false;
boolean A7=false;
boolean A8=false;
boolean A9=false;
boolean A10=false;

boolean B1=false;
boolean B2=false;
boolean B3=false;
boolean B4=false;
boolean B5=false;
boolean B6=false;
boolean B7=false;
boolean B8=false;
boolean B9=false;
boolean B10=false;

boolean C1=false;
boolean C2=false;
boolean C3=false;
boolean C4=false;
boolean C5=false;
boolean C6=false;
boolean C7=false;
boolean C8=false;
boolean C9=false;
boolean C10=false;

boolean D1=false;
boolean D2=false;
boolean D3=false;
boolean D4=false;
boolean D5=false;
boolean D6=false;
boolean D7=false;
boolean D8=false;
boolean D9=false;
boolean D10=false;

boolean E1=false;
boolean E2=false;
boolean E3=false;
boolean E4=false;
boolean E5=false;
boolean E6=false;
boolean E7=false;
boolean E8=false;
boolean E9=false;
boolean E10=false;

boolean F1=false;
boolean F2=false;
boolean F3=false;
boolean F4=false;
boolean F5=false;
boolean F6=false;
boolean F7=false;
boolean F8=false;
boolean F9=false;
boolean F10=false;

boolean G1=false;
boolean G2=false;
boolean G3=false;
boolean G4=false;
boolean G5=false;
boolean G6=false;
boolean G7=false;
boolean G8=false;
boolean G9=false;
boolean G10=false;

boolean H1=false;
boolean H2=false;
boolean H3=false;
boolean H4=false;
boolean H5=false;
boolean H6=false;
boolean H7=false;
boolean H8=false;
boolean H9=false;
boolean H10=false;

boolean I1=false;
boolean I2=false;
boolean I3=false;
boolean I4=false;
boolean I5=false;
boolean I6=false;
boolean I7=false;
boolean I8=false;
boolean I9=false;
boolean I10=false;

boolean J1=false;
boolean J2=false;
boolean J3=false;
boolean J4=false;
boolean J5=false;
boolean J6=false;
boolean J7=false;
boolean J8=false;
boolean J9=false;
boolean J10=false;




PImage fire;                                   /* her og i void setup definerer jeg en variabel "fire" som loader en image kun en gang i stedet
                                for at gøre det i void draw for hver gang man trykker på en af clickboxes...jeg fand ud af at på den måde undgår man 
                                lags som opståede da jeg havde skrevet : ,,PImage fire=loadImage(fire.png),, hver han foran resize ind i void draw... (kig på linje 656,662,668 */
void setup() {
  fire=loadImage("fire.png");
                                              
  background(/*220, 240, 100*/255);
  size(1920, 1080);
  //fullScreen();
  stroke(0);
  strokeWeight(2);
  //creative game title design :
 PImage fire= loadImage("fire.png");
 tint(255,127);// 127-50% opacity
  PImage ocean2= loadImage("ocean2.png");
  ocean2.resize(1700, 0);
  image(ocean2, 100, 230);   
   tint(255,255);//255-back to 100% opacity
   
 PImage goodwave= loadImage("good_wave.png");
  goodwave.resize(1000, 0);
  image(goodwave, 650, -30);
   tint(255,127);// 127-50% opacity
  PImage ocean1= loadImage("ocean1.png");
  ocean1.resize(1700, 0);
  image(ocean1, 1050, 230);
   tint(255,255);//255-back to 100% opacity
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
}


void game_board() {
  for (int i = 0; i < 751; i = i + 75) {
    line(100, 305, 175, 305);
    pushMatrix();
    translate(100, 230);
    line(0, i, 750, i);
    line(i, 0, i, 750);
    fill(0);
    popMatrix();
    pushMatrix();
    translate(1050, 230);
    line(0, i, 750, i);
    line(i, 0, i, 750);
    fill(0);
    popMatrix();
    textSize(50);
    //bane på venstre side
    text("1", 55, 280);
    text("2", 55, 355);
    text("3", 55, 430);
    text("4", 55, 505);
    text("5", 55, 580);
    text("6", 55, 655);
    text("7", 55, 730);
    text("8", 55, 805);
    text("9", 55, 880);
    text("10", 40, 955);
    //bane på højre side
    text("1", 1000, 280);
    text("2", 1000, 355);
    text("3", 1000, 430);
    text("4", 1000, 505);
    text("5", 1000, 580);
    text("6", 1000, 655);
    text("7", 1000, 730);
    text("8", 1000, 805);
    text("9", 1000, 880);
    text("10", 985, 955);

    textSize(50);
    text("A", 125, 225);
    text("B", 200, 225);
    text("C", 275, 225);
    text("D", 350, 225);
    text("E", 425, 225);
    text("F", 500, 225);
    text("G", 575, 225);
    text("H", 650, 225);
    text("I", 725, 225);
    text("J", 800, 225);
    pushMatrix();
    translate(950, 0);
    text("A", 125, 225);
    text("B", 200, 225);
    text("C", 275, 225);
    text("D", 350, 225);
    text("E", 425, 225);
    text("F", 500, 225);
    text("G", 575, 225);
    text("H", 650, 225);
    text("I", 725, 225);
    text("J", 800, 225);
    popMatrix();
  }
}


void mouseClicked() {
  float x=mouseX;
  float y=mouseY;
  /////////////////////////////////////////////////////     A  CLICK BOXES     ////////////////////////////////////////////////////////
  //A1
  if ((x>100&&x<100+(75*1))&&(y>230&&y<230+(75*1))) {
    A1=true;
  }
  //A2
  if ((x>100&&x<100+(75*1))&&(y>230+(75*1)&&y<230+(75*2))) {
    A2=true;
  }

  //A3
  if ((x>100&&x<100+(75*1))&&(y>230+(75*2)&&y<230+(75*3))) {
    A3=true;
  }
  //A4
  if ((x>100&&x<100+(75*1))&&(y>230+(75*3)&&y<230+(75*4))) {
    A4=true;
  }

  //A5
  if ((x>100&&x<100+(75*1))&&(y>230+(75*4)&&y<230+(75*5))) {
    A5=true;
  }
  //A6
  if ((x>100&&x<100+(75*1))&&(y>230+(75*5)&&y<230+(75*6))) {
    A6=true;
  }
  //A7
  if ((x>100&&x<100+(75*1))&&(y>230+(75*6)&&y<230+(75*7))) {
    A7=true;
  }
  //A8
  if ((x>100&&x<100+(75*1))&&(y>230+(75*7)&&y<230+(75*8))) {
    A8=true;
  }
  //A9
  if ((x>100&&x<100+(75*1))&&(y>230+(75*8)&&y<230+(75*9))) {
    A9=true;
  }
  //A10
  if ((x>100&&x<100+(75*1))&&(y>230+(75*9)&&y<230+(75*10))) {
    A10=true;
  }

  /////////////////////////////////////////////////////     B  CLICK BOXES     ////////////////////////////////////////////////////////
  //B1
  if ((x>100+(75*1)&&x<100+(75*2))&&(y>230&&y<230+(75*1))) {
    B1=true;
  }
  //B2
  if ((x>100+(75*1)&&x<100+(75*2))&&(y>230+(75*1)&&y<230+(75*2))) {
    B2=true;
  }

  //B3
  if ((x>100+(75*1)&&x<100+(75*2))&&(y>230+(75*2)&&y<230+(75*3))) {
    B3=true;
  }
  //B4
  if ((x>100+(75*1)&&x<100+(75*2))&&(y>230+(75*3)&&y<230+(75*4))) {
    B4=true;
  }

  //B5
  if ((x>100+(75*1)&&x<100+(75*2))&&(y>230+(75*4)&&y<230+(75*5))) {
    B5=true;
  }
  //B6
  if ((x>100+(75*1)&&x<100+(75*2))&&(y>230+(75*5)&&y<230+(75*6))) {
    B6=true;
  }
  //B7
  if ((x>100+(75*1)&&x<100+(75*2))&&(y>230+(75*6)&&y<230+(75*7))) {
    B7=true;
  }
  //B8
  if ((x>100+(75*1)&&x<100+(75*2))&&(y>230+(75*7)&&y<230+(75*8))) {
    B8=true;
  }
  //B9
  if ((x>100+(75*1)&&x<100+(75*2))&&(y>230+(75*8)&&y<230+(75*9))) {
    B9=true;
  }
  //B10
  if ((x>100+(75*1)&&x<100+(75*2))&&(y>230+(75*9)&&y<230+(75*10))) {
    B10=true;
  }
  /////////////////////////////////////////////////////     C   CLICK BOXES     ////////////////////////////////////////////////////////
  //C1
  if ((x>100+(75*2)&&x<100+(75*3))&&(y>230&&y<230+(75*1))) {
    C1=true;
  }
  //C2
  if ((x>100+(75*2)&&x<100+(75*3))&&(y>230+(75*1)&&y<230+(75*2))) {
    C2=true;
  }
  //C3
  if ((x>100+(75*2)&&x<100+(75*3))&&(y>230+(75*2)&&y<230+(75*3))) {
    C3=true;
  }
  //C4
  if ((x>100+(75*2)&&x<100+(75*3))&&(y>230+(75*3)&&y<230+(75*4))) {
    C4=true;
  }
  //C5
  if ((x>100+(75*2)&&x<100+(75*3))&&(y>230+(75*4)&&y<230+(75*5))) {
    C5=true;
  }
  //C6
  if ((x>100+(75*2)&&x<100+(75*3))&&(y>230+(75*5)&&y<230+(75*6))) {
    C6=true;
  }
  //C7
  if ((x>100+(75*2)&&x<100+(75*3))&&(y>230+(75*6)&&y<230+(75*7))) {
    C7=true;
  }
  //C8
  if ((x>100+(75*2)&&x<100+(75*3))&&(y>230+(75*7)&&y<230+(75*8))) {
    C8=true;
  }
  //C9
  if ((x>100+(75*2)&&x<100+(75*3))&&(y>230+(75*8)&&y<230+(75*9))) {
    C9=true;
  }
  //C10
  if ((x>100+(75*2)&&x<100+(75*3))&&(y>230+(75*9)&&y<230+(75*10))) {
    C10=true;
  }

  /////////////////////////////////////////////////////     D  CLICK BOXES     ////////////////////////////////////////////////////////
  //D1
  if ((x>100+(75*3)&&x<100+(75*4))&&(y>230&&y<230+(75*1))) {
    D1=true;
  }
  //D2
  if ((x>100+(75*3)&&x<100+(75*4))&&(y>230+(75*1)&&y<230+(75*2))) {
    D2=true;
  }
  //D3
  if ((x>100+(75*3)&&x<100+(75*4))&&(y>230+(75*2)&&y<230+(75*3))) {
    D3=true;
  }
  //D4
  if ((x>100+(75*3)&&x<100+(75*4))&&(y>230+(75*3)&&y<230+(75*4))) {
    D4=true;
  }
  //D5
  if ((x>100+(75*3)&&x<100+(75*4))&&(y>230+(75*4)&&y<230+(75*5))) {
    D5=true;
  }
  //D6
  if ((x>100+(75*3)&&x<100+(75*4))&&(y>230+(75*5)&&y<230+(75*6))) {
    D6=true;
  }
  //D7
  if ((x>100+(75*3)&&x<100+(75*4))&&(y>230+(75*6)&&y<230+(75*7))) {
    D7=true;
  }
  //D8
  if ((x>100+(75*3)&&x<100+(75*4))&&(y>230+(75*7)&&y<230+(75*8))) {
    D8=true;
  }
  //D9
  if ((x>100+(75*3)&&x<100+(75*4))&&(y>230+(75*8)&&y<230+(75*9))) {
    D9=true;
  }
  //D10
  if ((x>100+(75*3)&&x<100+(75*4))&&(y>230+(75*9)&&y<230+(75*10))) {
    D10=true;
  }
  /////////////////////////////////////////////////////     E  CLICK BOXES     ////////////////////////////////////////////////////////
  //E1
  if ((x>100+(75*4)&&x<100+(75*5))&&(y>230&&y<230+(75*1))) {
    E1=true;
  }
  //E2
  if ((x>100+(75*4)&&x<100+(75*5))&&(y>230+(75*1)&&y<230+(75*2))) {
    E2=true;
  }
  //E3
  if ((x>100+(75*4)&&x<100+(75*5))&&(y>230+(75*2)&&y<230+(75*3))) {
    E3=true;
  }
  //E4
  if ((x>100+(75*4)&&x<100+(75*5))&&(y>230+(75*3)&&y<230+(75*4))) {
    E4=true;
  }
  //E5
  if ((x>100+(75*4)&&x<100+(75*5))&&(y>230+(75*4)&&y<230+(75*5))) {
    E5=true;
  }
  //E6
  if ((x>100+(75*4)&&x<100+(75*5))&&(y>230+(75*5)&&y<230+(75*6))) {
    E6=true;
  }
  //E7
  if ((x>100+(75*4)&&x<100+(75*5))&&(y>230+(75*6)&&y<230+(75*7))) {
    E7=true;
  }
  //E8
  if ((x>100+(75*4)&&x<100+(75*5))&&(y>230+(75*7)&&y<230+(75*8))) {
    E8=true;
  }
  //E9
  if ((x>100+(75*4)&&x<100+(75*5))&&(y>230+(75*8)&&y<230+(75*9))) {
    E9=true;
  }
  //E10
  if ((x>100+(75*4)&&x<100+(75*5))&&(y>230+(75*9)&&y<230+(75*10))) {
    E10=true;
  }
  /////////////////////////////////////////////////////     F  CLICK BOXES     ////////////////////////////////////////////////////////
  //F1
  if ((x>100+(75*5)&&x<100+(75*6))&&(y>230&&y<230+(75*1))) {
    F1=true;
  }
  //F2
  if ((x>100+(75*5)&&x<100+(75*6))&&(y>230+(75*1)&&y<230+(75*2))) {
    F2=true;
  }
  //F3
  if ((x>100+(75*5)&&x<100+(75*6))&&(y>230+(75*2)&&y<230+(75*3))) {
    F3=true;
  }
  //F4
  if ((x>100+(75*5)&&x<100+(75*6))&&(y>230+(75*3)&&y<230+(75*4))) {
    F4=true;
  }
  //F5
  if ((x>100+(75*5)&&x<100+(75*6))&&(y>230+(75*4)&&y<230+(75*5))) {
    F5=true;
  }
  //F6
  if ((x>100+(75*5)&&x<100+(75*6))&&(y>230+(75*5)&&y<230+(75*6))) {
    F6=true;
  }
  //F7
  if ((x>100+(75*5)&&x<100+(75*6))&&(y>230+(75*6)&&y<230+(75*7))) {
    F7=true;
  }
  //F8
  if ((x>100+(75*5)&&x<100+(75*6))&&(y>230+(75*7)&&y<230+(75*8))) {
    F8=true;
  }
  //F9
  if ((x>100+(75*5)&&x<100+(75*6))&&(y>230+(75*8)&&y<230+(75*9))) {
    F9=true;
  }
  //F10
  if ((x>100+(75*5)&&x<100+(75*6))&&(y>230+(75*9)&&y<230+(75*10))) {
    F10=true;
  }
  /////////////////////////////////////////////////////     G  CLICK BOXES     ////////////////////////////////////////////////////////
  //G1
  if ((x>100+(75*6)&&x<100+(75*7))&&(y>230&&y<230+(75*1))) {
    G1=true;
  }
  //G2
  if ((x>100+(75*6)&&x<100+(75*7))&&(y>230+(75*1)&&y<230+(75*2))) {
    G2=true;
  }
  //G3
  if ((x>100+(75*6)&&x<100+(75*7))&&(y>230+(75*2)&&y<230+(75*3))) {
    G3=true;
  }
  //G4
  if ((x>100+(75*6)&&x<100+(75*7))&&(y>230+(75*3)&&y<230+(75*4))) {
    G4=true;
  }
  //G5
  if ((x>100+(75*6)&&x<100+(75*7))&&(y>230+(75*4)&&y<230+(75*5))) {
    G5=true;
  }
  //G6
  if ((x>100+(75*6)&&x<100+(75*7))&&(y>230+(75*5)&&y<230+(75*6))) {
    G6=true;
  }
  //G7
  if ((x>100+(75*6)&&x<100+(75*7))&&(y>230+(75*6)&&y<230+(75*7))) {
    G7=true;
  }
  //G8
  if ((x>100+(75*6)&&x<100+(75*7))&&(y>230+(75*7)&&y<230+(75*8))) {
    G8=true;
  }
  //G9
  if ((x>100+(75*6)&&x<100+(75*7))&&(y>230+(75*8)&&y<230+(75*9))) {
    G9=true;
  }
  //G10
  if ((x>100+(75*6)&&x<100+(75*7))&&(y>230+(75*9)&&y<230+(75*10))) {
    G10=true;
  }
  /////////////////////////////////////////////////////     H  CLICK BOXES     ////////////////////////////////////////////////////////
  //H1
  if ((x>100+(75*7)&&x<100+(75*8))&&(y>230&&y<230+(75*1))) {
    H1=true;
  }
  //H2
  if ((x>100+(75*7)&&x<100+(75*8))&&(y>230+(75*1)&&y<230+(75*2))) {
    H2=true;
  }
  //H3
  if ((x>100+(75*7)&&x<100+(75*8))&&(y>230+(75*2)&&y<230+(75*3))) {
    H3=true;
  }
  //H4
  if ((x>100+(75*7)&&x<100+(75*8))&&(y>230+(75*3)&&y<230+(75*4))) {
    H4=true;
  }
  //H5
  if ((x>100+(75*7)&&x<100+(75*8))&&(y>230+(75*4)&&y<230+(75*5))) {
    H5=true;
  }
  //H6
  if ((x>100+(75*7)&&x<100+(75*8))&&(y>230+(75*5)&&y<230+(75*6))) {
    H6=true;
  }
  //H7
  if ((x>100+(75*7)&&x<100+(75*8))&&(y>230+(75*6)&&y<230+(75*7))) {
    H7=true;
  }
  //H8
  if ((x>100+(75*7)&&x<100+(75*8))&&(y>230+(75*7)&&y<230+(75*8))) {
    H8=true;
  }
  //H9
  if ((x>100+(75*7)&&x<100+(75*8))&&(y>230+(75*8)&&y<230+(75*9))) {
    H9=true;
  }
  //H10
  if ((x>100+(75*7)&&x<100+(75*8))&&(y>230+(75*9)&&y<230+(75*10))) {
    H10=true;
  }
  /////////////////////////////////////////////////////     I  CLICK BOXES     ////////////////////////////////////////////////////////
  //I1
  if ((x>100+(75*8)&&x<100+(75*9))&&(y>230&&y<230+(75*1))) {
    I1=true;
  }
  //I2
  if ((x>100+(75*8)&&x<100+(75*9))&&(y>230+(75*1)&&y<230+(75*2))) {
    I2=true;
  }
  //I3
  if ((x>100+(75*8)&&x<100+(75*9))&&(y>230+(75*2)&&y<230+(75*3))) {
    I3=true;
  }
  //I4
  if ((x>100+(75*8)&&x<100+(75*9))&&(y>230+(75*3)&&y<230+(75*4))) {
    I4=true;
  }
  //I5
  if ((x>100+(75*8)&&x<100+(75*9))&&(y>230+(75*4)&&y<230+(75*5))) {
    I5=true;
  }
  //I6
  if ((x>100+(75*8)&&x<100+(75*9))&&(y>230+(75*5)&&y<230+(75*6))) {
    I6=true;
  }
  //I7
  if ((x>100+(75*8)&&x<100+(75*9))&&(y>230+(75*6)&&y<230+(75*7))) {
    I7=true;
  }
  //I8
  if ((x>100+(75*8)&&x<100+(75*9))&&(y>230+(75*7)&&y<230+(75*8))) {
    I8=true;
  }
  //I9
  if ((x>100+(75*8)&&x<100+(75*9))&&(y>230+(75*8)&&y<230+(75*9))) {
    I9=true;
  }
  //I10
  if ((x>100+(75*8)&&x<100+(75*9))&&(y>230+(75*9)&&y<230+(75*10))) {
    I10=true;
  }
  /////////////////////////////////////////////////////     J  CLICK BOXES     ////////////////////////////////////////////////////////
  //J1
  if ((x>100+(75*9)&&x<100+(75*10))&&(y>230&&y<230+(75*1))) {
    J1=true;
  }
  //J2
  if ((x>100+(75*9)&&x<100+(75*10))&&(y>230+(75*1)&&y<230+(75*2))) {
    J2=true;
  }
  //J3
  if ((x>100+(75*9)&&x<100+(75*10))&&(y>230+(75*2)&&y<230+(75*3))) {
    J3=true;
  }
  //J4
  if ((x>100+(75*9)&&x<100+(75*10))&&(y>230+(75*3)&&y<230+(75*4))) {
    J4=true;
  }
  //J5
  if ((x>100+(75*9)&&x<100+(75*10))&&(y>230+(75*4)&&y<230+(75*5))) {
    J5=true;
  }
  //J6
  if ((x>100+(75*9)&&x<100+(75*10))&&(y>230+(75*5)&&y<230+(75*6))) {
    J6=true;
  }
  //J7
  if ((x>100+(75*9)&&x<100+(75*10))&&(y>230+(75*6)&&y<230+(75*7))) {
    J7=true;
  }
  //J8
  if ((x>100+(75*9)&&x<100+(75*10))&&(y>230+(75*7)&&y<230+(75*8))) {
    J8=true;
  }
  //J9
  if ((x>100+(75*9)&&x<100+(75*10))&&(y>230+(75*8)&&y<230+(75*9))) {
    J9=true;
  }
  //J10
  if ((x>100+(75*9)&&x<100+(75*10))&&(y>230+(75*9)&&y<230+(75*10))) {
    J10=true;
  }


  /////////////////////////////////////////////////////////////    A FIRE IMAGES   //////////////////////////////////////////////////////////////////////
  //A1 fire
  if (A1) {
   //          eksempel jeg snakker om i linje 125;          PImage fire=loadImage("fire.png");
    fire.resize(130, 0);
    image(fire, 80, 230);
  }
  //A2 fire
  if (A2) {
     //          eksempel jeg snakker om i linje 125;          PImage fire=loadImage("fire.png");
    fire.resize(130, 0);
    image(fire, 80, 230+(75*1));
  }
  //A3 fire
  if (A3) {
      //          eksempel jeg snakker om i linje 125;          PImage fire=loadImage("fire.png");            ...osv
    fire.resize(130, 0);
    image(fire, 80, 230+(75*2));
  }
  //A4 fire
  if (A4) {
   
    fire.resize(130, 0);
    image(fire, 80, 230+(75*3));
  }
  //A5 fire
  if (A5) {
   
    fire.resize(130, 0);
    image(fire, 80, 230+(75*4));
  }
  //A6 fire
  if (A6) {
    fire.resize(130, 0);
    image(fire, 80, 230+(75*5));
  }
  //A7 fire
  if (A7) {
    fire.resize(130, 0);
    image(fire, 80, 230+(75*6));
  }
  //A8 fire
  if (A8) {
    fire.resize(130, 0);
    image(fire, 80, 230+(75*7));
  }
  //A9 fire
  if (A9) {
    fire.resize(130, 0);
    image(fire, 80, 230+(75*8));
  }
  //A10 fire
  if (A10) {
    fire.resize(130, 0);
    image(fire, 80, 230+(75*9));
  }
  /////////////////////////////////////////////////////////////    B FIRE IMAGES   //////////////////////////////////////////////////////////////////////
  //B1 fire
  if (B1) {
    fire.resize(130, 0);
    image(fire, 80+(75*1), 230);
  }
  //B2 fire
  if (B2) {
    fire.resize(130, 0);
    image(fire, 80+(75*1), 230+(75*1));
  }
  //B3 fire
  if (B3) {
    fire.resize(130, 0);
    image(fire, 80+(75*1), 230+(75*2));
  }
  //B4 fire
  if (B4) {
    fire.resize(130, 0);
    image(fire, 80+(75*1), 230+(75*3));
  }
  //B5 fire
  if (B5) {
    fire.resize(130, 0);
    image(fire, 80+(75*1), 230+(75*4));
  }
  //B6 fire
  if (B6) {
    fire.resize(130, 0);
    image(fire, 80+(75*1), 230+(75*5));
  }
  //B7 fire
  if (B7) {
    fire.resize(130, 0);
    image(fire, 80+(75*1), 230+(75*6));
  }
  //B8 fire
  if (B8) {
    fire.resize(130, 0);
    image(fire, 80+(75*1), 230+(75*7));
  }
  //B9 fire
  if (B9) {
    fire.resize(130, 0);
    image(fire, 80+(75*1), 230+(75*8));
  }
  //B10 fire
  if (B10) {
    fire.resize(130, 0);
    image(fire, 80+(75*1), 230+(75*9));
  }
  /////////////////////////////////////////////////////////////    C FIRE IMAGES   //////////////////////////////////////////////////////////////////////
  //C1 fire
  if (C1) {
    fire.resize(130, 0);
    image(fire, 80+(75*2), 230);
  }
  //C2 fire
  if (C2) {
    fire.resize(130, 0);
    image(fire, 80+(75*2), 230+(75*1));
  }
  //C3 fire
  if (C3) {
    fire.resize(130, 0);
    image(fire, 80+(75*2), 230+(75*2));
  }
  //C4 fire
  if (C4) {
    fire.resize(130, 0);
    image(fire, 80+(75*2), 230+(75*3));
  }
  //C5 fire
  if (C5) {
    fire.resize(130, 0);
    image(fire, 80+(75*2), 230+(75*4));
  }
  //C6 fire
  if (C6) {
    fire.resize(130, 0);
    image(fire, 80+(75*2), 230+(75*5));
  }
  //C7 fire
  if (C7) {
    fire.resize(130, 0);
    image(fire, 80+(75*2), 230+(75*6));
  }
  //C8 fire
  if (C8) {
    fire.resize(130, 0);
    image(fire, 80+(75*2), 230+(75*7));
  }
  //C9 fire
  if (C9) {
    fire.resize(130, 0);
    image(fire, 80+(75*2), 230+(75*8));
  }
  //C10 fire
  if (C10) {
    fire.resize(130, 0);
    image(fire, 80+(75*2), 230+(75*9));
  }
  /////////////////////////////////////////////////////////////    D FIRE IMAGES   //////////////////////////////////////////////////////////////////////
  //B1 fire
  if (D1) {
    fire.resize(130, 0);
    image(fire, 80+(75*3), 230);
  }
  //D2 fire
  if (D2) {
    fire.resize(130, 0);
    image(fire, 80+(75*3), 230+(75*1));
  }
  //D3 fire
  if (D3) {
    fire.resize(130, 0);
    image(fire, 80+(75*3), 230+(75*2));
  }
  //D4 fire
  if (D4) {
    fire.resize(130, 0);
    image(fire, 80+(75*3), 230+(75*3));
  }
  //D5 fire
  if (D5) {
    fire.resize(130, 0);
    image(fire, 80+(75*3), 230+(75*4));
  }
  //D6 fire
  if (D6) {
    fire.resize(130, 0);
    image(fire, 80+(75*3), 230+(75*5));
  }
  //D7 fire
  if (D7) {
    fire.resize(130, 0);
    image(fire, 80+(75*3), 230+(75*6));
  }
  //D8 fire
  if (D8) {
    fire.resize(130, 0);
    image(fire, 80+(75*3), 230+(75*7));
  }
  //D9 fire
  if (D9) {
    fire.resize(130, 0);
    image(fire, 80+(75*3), 230+(75*8));
  }
  //D10 fire
  if (D10) {
    fire.resize(130, 0);
    image(fire, 80+(75*3), 230+(75*9));
  }
  /////////////////////////////////////////////////////////////    E FIRE IMAGES   //////////////////////////////////////////////////////////////////////
  //E1 fire
  if (E1) {
    fire.resize(130, 0);
    image(fire, 80+(75*4), 230);
  }
  //E2 fire
  if (E2) {
    fire.resize(130, 0);
    image(fire, 80+(75*4), 230+(75*1));
  }
  //E3 fire
  if (E3) {
    fire.resize(130, 0);
    image(fire, 80+(75*4), 230+(75*2));
  }
  //E4 fire
  if (E4) {
    fire.resize(130, 0);
    image(fire, 80+(75*4), 230+(75*3));
  }
  //E5 fire
  if (E5) {
    fire.resize(130, 0);
    image(fire, 80+(75*4), 230+(75*4));
  }
  //E6 fire
  if (E6) {
    fire.resize(130, 0);
    image(fire, 80+(75*4), 230+(75*5));
  }
  //E7 fire
  if (E7) {
    fire.resize(130, 0);
    image(fire, 80+(75*4), 230+(75*6));
  }
  //E8 fire
  if (E8) {
    fire.resize(130, 0);
    image(fire, 80+(75*4), 230+(75*7));
  }
  //E9 fire
  if (E9) {
    fire.resize(130, 0);
    image(fire, 80+(75*4), 230+(75*8));
  }
  //E10 fire
  if (E10) {
    fire.resize(130, 0);
    image(fire, 80+(75*4), 230+(75*9));
  }
  /////////////////////////////////////////////////////////////    F FIRE IMAGES   //////////////////////////////////////////////////////////////////////
  //F1 fire
  if (F1) {
    fire.resize(130, 0);
    image(fire, 80+(75*5), 230);
  }
  //F2 fire
  if (F2) {
    fire.resize(130, 0);
    image(fire, 80+(75*5), 230+(75*1));
  }
  //F3 fire
  if (F3) {
    fire.resize(130, 0);
    image(fire, 80+(75*5), 230+(75*2));
  }
  //F4 fire
  if (F4) {
    fire.resize(130, 0);
    image(fire, 80+(75*5), 230+(75*3));
  }
  //F5 fire
  if (F5) {
    fire.resize(130, 0);
    image(fire, 80+(75*5), 230+(75*4));
  }
  //F6 fire
  if (F6) {
    fire.resize(130, 0);
    image(fire, 80+(75*5), 230+(75*5));
  }
  //F7 fire
  if (F7) {
    fire.resize(130, 0);
    image(fire, 80+(75*5), 230+(75*6));
  }
  //F8 fire
  if (F8) {
    fire.resize(130, 0);
    image(fire, 80+(75*5), 230+(75*7));
  }
  //F9 fire
  if (F9) {
    fire.resize(130, 0);
    image(fire, 80+(75*5), 230+(75*8));
  }
  //F10 fire
  if (F10) {
    fire.resize(130, 0);
    image(fire, 80+(75*5), 230+(75*9));
  }
  /////////////////////////////////////////////////////////////    G FIRE IMAGES   //////////////////////////////////////////////////////////////////////
  //G1 fire
  if (G1) {
    fire.resize(130, 0);
    image(fire, 80+(75*6), 230);
  }
  //G2 fire
  if (G2) {
    fire.resize(130, 0);
    image(fire, 80+(75*6), 230+(75*1));
  }
  //G3 fire
  if (G3) {
    fire.resize(130, 0);
    image(fire, 80+(75*6), 230+(75*2));
  }
  //G4 fire
  if (G4) {
    fire.resize(130, 0);
    image(fire, 80+(75*6), 230+(75*3));
  }
  //G5 fire
  if (G5) {
    fire.resize(130, 0);
    image(fire, 80+(75*6), 230+(75*4));
  }
  //G6 fire
  if (G6) {
    fire.resize(130, 0);
    image(fire, 80+(75*6), 230+(75*5));
  }
  //G7 fire
  if (G7) {
    fire.resize(130, 0);
    image(fire, 80+(75*6), 230+(75*6));
  }
  //G8 fire
  if (G8) {
    fire.resize(130, 0);
    image(fire, 80+(75*6), 230+(75*7));
  }
  //G9 fire
  if (G9) {
    fire.resize(130, 0);
    image(fire, 80+(75*6), 230+(75*8));
  }
  //G10 fire
  if (G10) {
    fire.resize(130, 0);
    image(fire, 80+(75*6), 230+(75*9));
  }
  /////////////////////////////////////////////////////////////    H FIRE IMAGES   //////////////////////////////////////////////////////////////////////
  //H1 fire
  if (H1) {
    fire.resize(130, 0);
    image(fire, 80+(75*7), 230);
  }
  //H2 fire
  if (H2) {
    fire.resize(130, 0);
    image(fire, 80+(75*7), 230+(75*1));
  }
  //H3 fire
  if (H3) {
    fire.resize(130, 0);
    image(fire, 80+(75*7), 230+(75*2));
  }
  //H4 fire
  if (H4) {
    fire.resize(130, 0);
    image(fire, 80+(75*7), 230+(75*3));
  }
  //H5 fire
  if (H5) {
    fire.resize(130, 0);
    image(fire, 80+(75*7), 230+(75*4));
  }
  //H6 fire
  if (H6) {
    fire.resize(130, 0);
    image(fire, 80+(75*7), 230+(75*5));
  }
  //H7 fire
  if (H7) {
    fire.resize(130, 0);
    image(fire, 80+(75*7), 230+(75*6));
  }
  //H8 fire
  if (H8) {
    fire.resize(130, 0);
    image(fire, 80+(75*7), 230+(75*7));
  }
  //H9 fire
  if (H9) {
    fire.resize(130, 0);
    image(fire, 80+(75*7), 230+(75*8));
  }
  //H10 fire
  if (H10) {
    fire.resize(130, 0);
    image(fire, 80+(75*7), 230+(75*9));
  }
  /////////////////////////////////////////////////////////////    I FIRE IMAGES   //////////////////////////////////////////////////////////////////////
  //I1 fire
  if (I1) {
    fire.resize(130, 0);
    image(fire, 80+(75*8), 230);
  }
  //I2 fire
  if (I2) {
    fire.resize(130, 0);
    image(fire, 80+(75*8), 230+(75*1));
  }
  //I3 fire
  if (I3) {
    fire.resize(130, 0);
    image(fire, 80+(75*8), 230+(75*2));
  }
  //I4 fire
  if (I4) {
    fire.resize(130, 0);
    image(fire, 80+(75*8), 230+(75*3));
  }
  //I5 fire
  if (I5) {
    fire.resize(130, 0);
    image(fire, 80+(75*8), 230+(75*4));
  }
  //I6 fire
  if (I6) {
    fire.resize(130, 0);
    image(fire, 80+(75*8), 230+(75*5));
  }
  //I7 fire
  if (I7) {
    fire.resize(130, 0);
    image(fire, 80+(75*8), 230+(75*6));
  }
  //I8 fire
  if (I8) {
    fire.resize(130, 0);
    image(fire, 80+(75*8), 230+(75*7));
  }
  //I9 fire
  if (I9) {
    fire.resize(130, 0);
    image(fire, 80+(75*8), 230+(75*8));
  }
  //I10 fire
  if (I10) {
    fire.resize(130, 0);
    image(fire, 80+(75*8), 230+(75*9));
  }
  /////////////////////////////////////////////////////////////    J FIRE IMAGES   //////////////////////////////////////////////////////////////////////
  //J1 fire
  if (J1) {
    fire.resize(130, 0);
    image(fire, 80+(75*9), 230);
  }
  //J2 fire
  if (J2) {
    fire.resize(130, 0);
    image(fire, 80+(75*9), 230+(75*1));
  }
  //J3 fire
  if (J3) {
    fire.resize(130, 0);
    image(fire, 80+(75*9), 230+(75*2));
  }
  //J4 fire
  if (J4) {
    fire.resize(130, 0);
    image(fire, 80+(75*9), 230+(75*3));
  }
  //J5 fire
  if (J5) {
    fire.resize(130, 0);
    image(fire, 80+(75*9), 230+(75*4));
  }
  //J6 fire
  if (J6) {
    fire.resize(130, 0);
    image(fire, 80+(75*9), 230+(75*5));
  }
  //J7 fire
  if (J7) {
    fire.resize(130, 0);
    image(fire, 80+(75*9), 230+(75*6));
  }
  //J8 fire
  if (J8) {
    fire.resize(130, 0);
    image(fire, 80+(75*9), 230+(75*7));
  }
  //J9 fire
  if (J9) {
    fire.resize(130, 0);
    image(fire, 80+(75*9), 230+(75*8));
  }
  //J10 fire
  if (J10) {
    fire.resize(130, 0);
    image(fire, 80+(75*9), 230+(75*9));
  }
}
