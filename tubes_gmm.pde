import processing.sound.*;
SoundFile file;
PImage img;
boolean bergerak = true;
int t = 1;
int scene = 1;
int x = 1280;
hujan[] hujan = new hujan[200];


void setup() {
  size(1280, 720);
  noStroke();
  frameRate(5);
  file = new SoundFile(this, "bgmusic.mp3");
  file.play();
  for (int i = 0; i<hujan.length; i++){
    hujan[i] = new hujan();
  }
}

void draw() {
  //SCENE 1
    if ((t>0)&&(t<=200)) {
    scene1(100, 400, 0.5);
  }
  
  //SCENE 2
  if ((t>200)&&(t<=473)) {
      scene2();
      frameRate(6);
    for (int i=0; i<hujan.length; i++){
      hujan[i].turun();
      hujan[i].show();
    }
  }
  if(((t>205)&&(t<=245))|| ((t>345)&&(t<=370))){
    petir(300, 100, 0.7);
    petir(900, 50, 0.7);
  }
  if(((t>300)&&(t<=340))|| ((t>400)&&(t<=460))){
    petir(800, 95, 0.7);
    petir(400, 100, 0.7);
  }
  if(((t>270)&&(t<=290))||((t>360)&&(t<=390))){
    petir(700, 40, 0.8);
    petir(200, 50, 0.7);
  }
  
  //SCENE 3
  if ((t>473)&&(t<=550)) {     
        scene3(150, 145, 0.25); 
    frameRate(6);
    for (int i=0; i<hujan.length; i++){
      hujan[i].turun();
      hujan[i].show(); 
    }
  }
  if(((t>480)&&(t<=490))||((t>530)&&(t<=550))){
    petir(300, 80, 0.8);
    petir(900, 50, 0.8);
  }
  if((t>500)&&(t<=520)){
    petir(500, 60, 0.7);
    petir(850, 100, 0.8);
  }
  
  //SCENE 4
  if ((t>550)&&(t<=750)) {
    sceneBadai(400);
     frameRate(6);
    for (int i=0; i<hujan.length; i++){
      hujan[i].turun();
      hujan[i].show();
    }
  }
  if((t>555)&&(t<=575)){
    petir(100, 90, 0.9);
    petir(900, 100, 0.8);
  }
  if((t>570)&&(t<=590)){
    petir(600, 80, 0.7);
    petir(400, 100, 0.8);
  }
  
  //SCENE 5
  if ((t>750)&&(t<=1000)){
    scene4();
    darman(350, 310, 0.3);
  }
  if((t>800)&&(t<=1000)){
    orang(400, 310, 0.4);
  }
  
  
  t++;
}
