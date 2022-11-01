/*
//buzka z dollarowymi oczami
PImage dollarsmiley= loadImage("dollar smiley.png");
dollarsmiley.resize(200,0);
image(dollarsmiley, 610, 410);

//buzka z sercami
PImage smiley= loadImage("mom smiley.png");
smiley.resize(280,0);
image(smiley, 570, 10);

*/
boolean flower=false;
boolean tidy_up=false;
boolean beer=false;
boolean mows_lawn=false;
boolean money=false;
boolean clothes=false;
boolean mom=false;
boolean dad=false;
boolean sister=false;
boolean moneybox=false;
boolean clothesbox=false;

void setup(){
  background(220,240,100); //color
  //size(820,620);
  fullScreen();
  stroke(0);
  strokeWeight(2);
}



void draw(){
 game_board();


}


void game_board(){
  for(int i = 50; i < 801; i = i + 75){
pushMatrix();
translate(50,height/6);
    line(50,i,800,i);
    line(i,50,i,800);
    fill(0);
    popMatrix();
    pushMatrix();
translate(1000,height/6);
    line(50,i,800,i);
    line(i,50,i,800);
    fill(0);
    popMatrix();
    textSize(50);
    //bane på venstre side
  text("1",55,280);
  text("2",55,355);
  text("3",55,430);
  text("4",55,505);
  text("5",55,580);
  text("6",55,655);
  text("7",55,730);
  text("8",55,805);
  text("9",55,880);
  text("10",40,955);
  //bane på højre side
    text("1",1000,280);
  text("2",1000,355);
  text("3",1000,430);
  text("4",1000,505);
  text("5",1000,580);
  text("6",1000,655);
  text("7",1000,730);
  text("8",1000,805);
  text("9",1000,880);
  text("10",985,955);
  
  textSize(50);
  text("A",125,225);       // a
  text("B",200,225);       // b
  text("C",275,225);    // c
  text("D",350,225);    // d
  text("E",425,225);      // e
  text("F",500,225);     // f
  text("G",575,225);   // g
  text("H",650,225);      // h
  text("I",725,225);      // i
  text("J",800,225);   // j
  pushMatrix();
 translate(950,0);
  text("A",125,225);       // a
  text("B",200,225);       // b
  text("C",275,225);    // c
  text("D",350,225);    // d
  text("E",425,225);      // e
  text("F",500,225);     // f
  text("G",575,225);   // g
  text("H",650,225);      // h
  text("I",725,225);      // i
  text("J",800,225);   // j
  popMatrix();
  
  }
}

  
void mouseClicked(){
 float x=mouseX;
 float y=mouseY;
 
 //  A 1
 if((x>50&&x<125)&&(y>(180+75*0)&&y<(180+75*1))){
 }
 //  A 2
 if((x>50&&x<125)&&(y>180+75*1&&y<180+75*2)){
 }
//   A 3
 if((x>50&&x<125)&&(y>180+75*2&&y<180+75*3)){
}
//   A 4
if((x>50&&x<125)&&(y>180+75*3&&y<180+75*4)){
}
//   A 5
if((x>50&&x<125)&&(y>180+75*4&&y<180+75*5)){
}
//  A 6
if((x>50&&x<125)&&(y>180+75*5&&y<180+75*6)){
}
//  A 7
if((x>50&&x<125)&&(y>180+75*6&&y<180+75*7)){
}
//  A 8
if((x>50&&x<125)&&(y>180+75*7&&y<180+75*8)){
}
//  A 9
if((x>50&&x<125)&&(y>180+75*8&&y<180+75*9)){
}
//  A 10
if((x>50&&x<125)&&(y>180+75*9&&y<180+75*10)){
}

/*
if (clothes&&money){
//buzka z dollarowymi oczami
PImage dollarsmiley= loadImage("dollar smiley.png");
dollarsmiley.resize(200,0);
image(dollarsmiley, 610, 410);
}
if(clothes&&money){
sister=true;
}                                                      
                                                                    //happy dad
if (beer&&mows_lawn){
PImage dadsmiley= loadImage("drunkdad.png");
dadsmiley.resize(220,0);
image(dadsmiley, 590, 230);
}
if(beer&&mows_lawn){
  dad=true;
}
                                                                    //happy mom
if(sister&&dad&&flower&&tidy_up){
  mom=true;
}
if(mom){
  //buzka z sercami
PImage smiley= loadImage("mom smiley.png");
smiley.resize(280,0);
image(smiley, 570, 10);
}
*/
}
