
//Same with weather
PImage imgSun;
PImage imgTeleSun;
PImage imgTextBubble;
PImage imgFlower;
PImage imgTree;
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
PImage imgBird;
PImage imgBell;
PImage imgSnack;
PImage imgLightning;
PImage imgCloud;
PImage timeApp;
PImage imgCheckMark;
PImage imgUmbrellaMan;
float rotInc;
float necInc = 1.0/14400; 
int redColor = 0;
int greenColor = 0;
int blueColor = 0;
int S = second();
int M = minute();
int H = hour();
int birdFly = 0;
//int time = S + M  * 60 + H * 3600;
//How do I get the time?
String Weather;
String blockDay;
Boolean rain = false;
Boolean stormy = false;
Boolean cloudy = false;
Boolean sunny = true;
Clock clock;
imageLoading ImageLoading;

void setup () {
  fullScreen();
  ImageLoading = new imageLoading();
  clock = new Clock();

  ImageLoading.images();
}


void draw () {
  background(redColor, greenColor, blueColor);

  rotInc = (H * 15) - 120 + M * (15.0/60) + S * 15.0/3600;
  //LOCAL TIME


  timeApp =  imgA;

  clock.imgSet();

  rotInc+= necInc;

  image(imgTree, 300, height - (height/5 + 120), 130, 130);
  
  teletubSun();
  blockOptions();
  weatherOptions();
  weatherCommands();
  mouseClicked();
  weatherSit();
  environment();
  
  image(imgTree, 750, height - (height/5 + 150), 200, 200);
  //Code above was intentionally left out of void environment.
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
  if (rain == true || stormy == true) {
    int i = 100;
    while (i < height) {
      i++;
      for (int j = 0; j < 10; j++) {
        fill(33, 61, 201);
        //rect(90 + j, 100 + i, 10, 10);
        rect(random(270, 600), random(295, height - 100), 2.5, 10);
        rect(random(width- 453, width-155), random(246, height - 125), 2.5, 10);
      }
    }
    image(imgCloud, 200, 0, 500, 500);
    image(imgCloud, width - 500, 0, 400, 400);
  }
  if (cloudy == true) {
    image(imgCloud, 200, 0, 500, 500);
    image(imgCloud, width - 500, 0, 400, 400);
  }
  if (stormy == true) {
    image(imgLightning, 300, 275, 100, 375);
    image(imgCloud, 200, 0, 500, 500);
    image(imgCloud, width - 500, 0, 400, 400);
  }  

  if (rain || stormy) {
    redColor = 10;
    greenColor = 22;
    blueColor = 84;
  } else if (cloudy == true) {
    redColor = 72;
    greenColor = 87;
    blueColor = 164;
  } else if (sunny == true) {
    redColor = 26;
    greenColor = 148;
    blueColor = 185;
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
    stormy = false;
    rain = false;
    sunny = false;
    image(imgCheckMark, width - 70, 40, 20, 20);
  } else if (mouseX <= width - 50 && mouseX >= width - 70 && mouseY <= 80  && mouseY >= 60) {
    Weather = "Stormy";
    stormy = true;
    rain = false;
    sunny = false;
    cloudy = false;
    image(imgCheckMark, width - 70, 60, 20, 20);
  } else if (mouseX <= width - 50 && mouseX >= width - 70 && mouseY <= 100  && mouseY >= 80) {
    Weather = "Sunny";
    sunny = true;
    stormy = false;
    rain = false;
    cloudy = false;
    image(imgCheckMark, width - 70, 80, 20, 20);
  } else if (mouseX <= width - 50 && mouseX >= width - 70 && mouseY <= 120  && mouseY >= 100) {
    Weather = "Rainny";
    rain = true;
    sunny = false;
    cloudy = false;
    stormy = false;
    image(imgCheckMark, width - 70, 100, 20, 20);
  }
}

void weatherSit() {
  if (sunny == true) {

    birdFly--;
  }
  image(imgBird, width + birdFly, random(100, 105), 100, 100);

  if (sunny == false) {
    birdFly = 0;
  }

  if (rain == true) {
    image(imgUmbrellaMan, 900, height - 210, 100, 100);
  }
}

void teletubSun() {
  if (timeApp == imgD ) {
    image(imgTeleSun, width/2 - 150, 50, 300, 300);
    image(imgTextBubble, width/2 + 15, 70, 300, 150);
    text("Right now I am in my favorite class!", width/2 + 70, 120);
    text("Teletubbies Baby Sun recommends giving", width/2 + 60, 135);
    text("D-block class 1 bonus point each!", width/2 + 60, 150);
  }
}

void environment() {
  image(imgFlower, 100, height - (height/5 - 100), 50, 50);
  image(imgFlower, 835, height - 85, 50, 50);
  image(imgFlower, 347, height - 100, 50, 50);
  image(imgFlower, 10, height - 130, 50, 50);
  image(imgFlower, 530, height - 125, 50, 50);
  image(imgFlower, 1030, height - 125, 50, 50);
}
