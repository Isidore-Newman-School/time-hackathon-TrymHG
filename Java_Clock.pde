//Make a box with the different blocks that a person presses
//Same with weather
PImage imgSun;
PImage imgA;
PImage imgB;
PImage imgC;
PImage imgD;
PImage imgE;
PImage imgF;
PImage imgG;
PImage imgH;
PImage imgA1;
PImage imgB1;
PImage imgC1;
PImage imgD1;
PImage imgE1;
PImage imgF1;
PImage imgG1;
PImage imgH1;
PImage imgBell;
PImage imgSnack;
PImage imgLightning;
PImage imgCloud;
PImage timeApp;
PImage imgCheckMark;
float rotInc;
float necInc = 1.0/14400; 
int Red = 0;
int Green = 0;
int Blue = 0;
int S = second();
int M = minute();
int H = hour();
//int time = S + M  * 60 + H * 3600;
//How do I get the time?
String Weather;
String blockDay;
Boolean rain = false;
Boolean stormy = false;
Boolean cloudy = false;
Boolean sunny = true;
Clock clock;

void setup () {
  fullScreen();
  imgSun = loadImage("Sun.PNG");
  imgA = loadImage("A_Block.png");
  imgB = loadImage("B_Block.png");
  imgC = loadImage("C_Block.png");
  imgD = loadImage("D_Block.png");
  imgE = loadImage("E_Block.png");
  imgF = loadImage("F_Block.png");
  imgG = loadImage("G_Block.png");
  imgBell = loadImage("Bell.png");
  imgH = loadImage("H_Block.png");
  imgSnack = loadImage("Snack.png");
  imgLightning = loadImage("Lightning.png");
  imgCloud = loadImage("Cloud.png");
  //The blocks with 1 after are correctly flipped.
  imgA1 = loadImage("A_Block1.png");
  imgB1 = loadImage("B_Block1.png");
  imgC1 = loadImage("C_Block1.png");
  imgD1 = loadImage("D_Block1.png");
  imgE1 = loadImage("E_Block1.png");
  imgF1 = loadImage("F_Block1.png");
  imgG1 = loadImage("G_Block1.png");
  imgH1 = loadImage("H_Block1.png");
  imgCheckMark = loadImage("Checkmark.png");

  clock = new Clock();
}


void draw () {
  rotInc = (H * 15) - 120 + M * (15.0/60) + S * 15.0/3600;
  //LOCAL TIME

  timeApp =  imgA;




  background(Red, Green, Blue);

  clock.imgSet();
  clock.display();
  rotInc+= necInc;

  blockOptions();
  weatherOptions();
  weatherCommands();
}

void blockOptions () {
  fill(0);
  text("What block day is it?", 20, 15);
  image(imgA1, 20, 20, 30, 30);
  noFill();
  stroke(0);
  rect(50, 20, 30, 30);
  image(imgB1, 20, 50, 30, 30);
  rect(50, 50, 30, 30);
  image(imgC1, 20, 80, 30, 30);
  rect(50, 80, 30, 30);
  image(imgD1, 20, 110, 30, 30);
  rect(50, 110, 30, 30);
  image(imgE1, 20, 140, 30, 30);
  rect(50, 140, 30, 30);
  image(imgF1, 20, 170, 30, 30);
  rect(50, 170, 30, 30);
  image(imgG1, 20, 200, 30, 30);
  rect(50, 200, 30, 30);
  image(imgH1, 20, 230, 30, 30);
  rect(50, 230, 30, 30);
}

void weatherOptions () {
  noFill();
  stroke(0);
  text("Weather", width-80, 30);
  text("Cloudy:", width-120, 50);
  rect(width - 70, 40, 20, 20);
  text("Stormy:", width - 120, 70);
  rect(width - 70, 60, 20, 20);
  text("Sunny:", width - 120, 90);
  rect(width -70, 80, 20, 20);
  text("Rainny:", width - 120, 110);
  rect(width - 70, 100, 20, 20);
}


void weatherCommands() {
  while (Weather == "Rainny") {
    image(imgCloud, 100, 100, 100, 100);
    image(imgCloud, width - 100, 100, 100, 100);
    for (int i = 100; i < height; i++) {
      for (int j = 0; j < 10; j++) {
        fill(33, 61, 201);
        rect(10, 10, 90 + j, 100 + i);
      }
    }
  }
  if (Weather == "Cloudy") {
    image(imgCloud, 200, 0, 400, 400);
    image(imgCloud, width - 500, 0, 400, 400);
  }
  if (Weather == "Stormy") {
    image(imgLightning, 300, 275, 100, 375);
    image(imgCloud, 200, 0, 400, 400);
    image(imgCloud, width - 500, 0, 400, 400);
  }  

  if (rain == true || stormy == true) {
    Red = 10;
    Green = 22;
    Blue = 84;
  } else if (cloudy == true) {
    Red = 72;
    Green = 87;
    Blue = 164;
  } else if (sunny == true) {
    Red = 26;
    Green = 148;
    Blue = 185;
  }
}



void mouseClicked() {
  if (mouseX <= 80 && mouseX >= 50 && mouseY <= 50  && mouseY >= 20) {
    blockDay = "A";
    image(imgCheckMark, 50, 20, 30, 30);
  } else if (mouseX <= 80 && mouseX >= 50 && mouseY <= 80  && mouseY >= 50) {
    blockDay = "B";
    image(imgCheckMark, 50, 50, 30, 30);
  } else if (mouseX <= 80 && mouseX >= 50 && mouseY <= 110  && mouseY >= 80) {
    blockDay = "C";
    image(imgCheckMark, 50, 80, 30, 30);
  } else if (mouseX <= 80 && mouseX >= 50 && mouseY <= 140  && mouseY >= 110) {
    blockDay = "D";
    image(imgCheckMark, 50, 110, 30, 30);
  } else if (mouseX <= 80 && mouseX >= 50 && mouseY <= 170  && mouseY >= 140) {
    blockDay = "E";
    image(imgCheckMark, 50, 140, 30, 30);
  } else if (mouseX <= 80 && mouseX >= 50 && mouseY <= 200  && mouseY >= 170) {
    blockDay = "F";
    image(imgCheckMark, 50, 170, 30, 30);
  } else if (mouseX <= 80 && mouseX >= 50 && mouseY <= 230  && mouseY >= 200) {
    blockDay = "G";
    image(imgCheckMark, 50, 200, 30, 30);
  } else if (mouseX <= 80 && mouseX >= 50 && mouseY <= 260  && mouseY >= 230) {
    blockDay = "H";
    image(imgCheckMark, 50, 230, 30, 30);
  }

  if (mouseX <= width - 50 && mouseX >= width - 70 && mouseY <= 60  && mouseY >= 40) {
    Weather = "Cloudy";
    cloudy = true;
    image(imgCheckMark, width - 70, 40, 20, 20);
  } else if (mouseX <= width - 50 && mouseX >= width - 70 && mouseY <= 80  && mouseY >= 60) {
    Weather = "Stormy";
    stormy = true;
    image(imgCheckMark, width - 70, 60, 20, 20);
  } else if (mouseX <= width - 50 && mouseX >= width - 70 && mouseY <= 100  && mouseY >= 80) {
    Weather = "Sunny";
    sunny = true;
    image(imgCheckMark, width - 70, 80, 20, 20);
  } else if (mouseX <= width - 50 && mouseX >= width - 70 && mouseY <= 120  && mouseY >= 100) {
    Weather = "Rainny";
    rain = true;
    image(imgCheckMark, width - 70, 100, 20, 20);
  }
}
