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
String Weather;
String blockDay;
Boolean rain = false;
Boolean stormy = false;
Boolean cloudy = false;
Boolean sunny = true;
Clock clock;
imageLoading ImageLoading;
mouseInterface MouseInterface;
weatherControl WeatherControl;
void setup () {
  fullScreen();
  ImageLoading = new imageLoading();
  clock = new Clock();
  MouseInterface = new mouseInterface();
  WeatherControl = new weatherControl();

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
  ImageLoading.displayBlocks();
  weatherOptions();

  WeatherControl.weatherCommands();

  weatherSit();
  environment();
  MouseInterface.mouseClicked();


  image(imgTree, 750, height - (height/5 + 150), 200, 200);
  //Code above was intentionally left out of void environment.
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
