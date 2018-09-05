//For Lunch Time, Show what is being served that day.
int state = 0; 
String result="";
PImage imgSun;
PImage imgA;
PImage imgB;
PImage imgC;
PImage imgD;
PImage imgE;
PImage imgF;
PImage imgG;
PImage imgH;
PImage imgBell;
PImage imgSnack;
PImage imgLightning;
PImage imgCloud;
PImage timeApp;
float rotInc = 13;
float necInc = 1.0/14400; 
int Red = 26;
int Green = 148;
int Blue = 185;
//!!!!! HOW TO DO I GET THIS NUMBER TO WORK is it 15/3600
//HOW FAST DOES THE DRAW REFRESH?
String Weather;
String blockDay;
Boolean rain;
Boolean storm;
Boolean cloudy;
//import java.util.Scanner;
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
  imgCloud = loadImage("Cloud.jpg");
}

void keyPressed() {

  if (key==ENTER||key==RETURN) {
    blockDay = result;
    state++;
  } else 
  result = result + key;
}
//https://forum.processing.org/two/discussion/20882/very-basic-question-how-to-create-an-input-text-box


void draw () {
  timeApp =  imgA;
  //while(Weather == "Rain" || Weather = "Rainny"){
  //image(imgCloud, 100, 100, 100, 100);
  //image(imgCloud, width - 100, 100, 100, 100);
  //  for(int i = 100; i < height; i++){
  //    for(int j = 0; j < 10; j++){
  //    fill(33, 61, 201);
  //     rect(10, 10, 90 + j, 100 + i);
  //    }
  //  }
  //rain = true;
  //}
  //if(Weather == "Cloudy"){
  //image(imgCloud, 100, 100, 100, 100);
  //image(imgCloud, width - 100, 100, 100, 100);
  //cloudy = true;
  //}
  //if(Weather == "Storm" || Weather == "Lightning" || Weather == "Thunder"){
  //image(imgCloud, 100, 100, 100, 100);
  //image(imgCloud, width - 100, 100, 100, 100);
  //image(imgLightning, 50, 50, 100, 100);
  //storm = true;
  //}  

  //if(rain == true || storm == true){
  //Red = 10;
  //Green = 22;
  //Blue = 84;
  //}
  //else if(cloudy == true){
  //Red = 72;
  //Green = 87;
  //Blue = 164
  //}


  background(Red, Green, Blue);

  //Scanner sc = new Scanner(System.in);
  //System.out.print("What is todays first block?");
  //String blockDay = sc.nextLine();
  //sc.close();
  //HOW DO I GET A STRING INPUT TO WORK?
  rotInc+= necInc;
  if (blockDay == "a") {
    if (rotInc >= 0 && rotInc <= 15) {
      timeApp = imgA;
    } else if (rotInc >= 15.75 && rotInc <= 27) {
      timeApp = imgB;
    } else if (rotInc >= 34.5 && rotInc <= 45.75) {
      timeApp = imgC;
    } else if (rotInc >= 46.5 && rotInc <= 57.75) {
      timeApp = imgD;
    } else if (rotInc >= 58.5 && rotInc <= 69.5) {
      timeApp = imgE;
    } else if (rotInc >= 81.75 && rotInc <= 93) {
      timeApp = imgF;
    } else if (rotInc >= 93.75 && rotInc <= 107.5) {
      timeApp = imgG;
    }
  }

  if (blockDay == "b") {
    if (rotInc >= 0 && rotInc <= 15) {
      timeApp = imgB;
    } else if (rotInc >= 15.75 && rotInc <= 27) {
      timeApp = imgC;
    } else if (rotInc >= 34.5 && rotInc <= 45.75) {
      timeApp = imgD;
    } else if (rotInc >= 46.5 && rotInc <= 57.75) {
      timeApp = imgE;
    } else if (rotInc >= 58.5 && rotInc <= 69.5) {
      timeApp = imgF;
    } else if (rotInc >= 81.75 && rotInc <= 93) {
      timeApp = imgG;
    } else if (rotInc >= 93.75 && rotInc <= 107.5) {
      timeApp = imgH;
    }
  }

  if (blockDay == "c") {
    if (rotInc >= 0 && rotInc <= 15) {
      timeApp = imgC;
    } else if (rotInc >= 15.75 && rotInc <= 27) {
      timeApp = imgD;
    } else if (rotInc >= 34.5 && rotInc <= 45.75) {
      timeApp = imgE;
    } else if (rotInc >= 46.5 && rotInc <= 57.75) {
      timeApp = imgF;
    } else if (rotInc >= 58.5 && rotInc <= 69.5) {
      timeApp = imgG;
    } else if (rotInc >= 81.75 && rotInc <= 93) {
      timeApp = imgH;
    } else if (rotInc >= 93.75 && rotInc <= 107.5) {
      timeApp = imgA;
    }
  }

  if (blockDay == "d") {
    if (rotInc >= 0 && rotInc <= 15) {
      timeApp = imgD;
    } else if (rotInc >= 15.75 && rotInc <= 27) {
      timeApp = imgE;
    } else if (rotInc >= 34.5 && rotInc <= 45.75) {
      timeApp = imgF;
    } else if (rotInc >= 46.5 && rotInc <= 57.75) {
      timeApp = imgG;
    } else if (rotInc >= 58.5 && rotInc <= 69.5) {
      timeApp = imgH;
    } else if (rotInc >= 81.75 && rotInc <= 93) {
      timeApp = imgA;
    } else if (rotInc >= 93.75 && rotInc <= 107.5) {
      timeApp = imgB;
    }
  }

  if (blockDay == "e") {
    if (rotInc >= 0 && rotInc <= 15) {
      timeApp = imgE;
    } else if (rotInc >= 15.75 && rotInc <= 27) {
      timeApp = imgF;
    } else if (rotInc >= 34.5 && rotInc <= 45.75) {
      timeApp = imgG;
    } else if (rotInc >= 46.5 && rotInc <= 57.75) {
      timeApp = imgH;
    } else if (rotInc >= 58.5 && rotInc <= 69.5) {
      timeApp = imgA;
    } else if (rotInc >= 81.75 && rotInc <= 93) {
      timeApp = imgB;
    } else if (rotInc >= 93.75 && rotInc <= 107.5) {
      timeApp = imgC;
    }
  }

  if (blockDay == "f") {
    if (rotInc >= 0 && rotInc <= 15) {
      timeApp = imgF;
    } else if (rotInc >= 15.75 && rotInc <= 27) {
      timeApp = imgG;
    } else if (rotInc >= 34.5 && rotInc <= 45.75) {
      timeApp = imgH;
    } else if (rotInc >= 46.5 && rotInc <= 57.75) {
      timeApp = imgA;
    } else if (rotInc >= 58.5 && rotInc <= 69.5) {
      timeApp = imgB;
    } else if (rotInc >= 81.75 && rotInc <= 93) {
      timeApp = imgC;
    } else if (rotInc >= 93.75 && rotInc <= 107.5) {
      timeApp = imgD;
    }
  }

  if (blockDay == "g") {
    if (rotInc >= 0 && rotInc <= 15) {
      timeApp = imgG;
    } else if (rotInc >= 15.75 && rotInc <= 27) {
      timeApp = imgH;
    } else if (rotInc >= 34.5 && rotInc <= 45.75) {
      timeApp = imgA;
    } else if (rotInc >= 46.5 && rotInc <= 57.75) {
      timeApp = imgB;
    } else if (rotInc >= 58.5 && rotInc <= 69.5) {
      timeApp = imgC;
    } else if (rotInc >= 81.75 && rotInc <= 93) {
      timeApp = imgD;
    } else if (rotInc >= 93.75 && rotInc <= 107.5) {
      timeApp = imgE;
    }
  }

  if (blockDay == "h") {
    if (rotInc >= 0 && rotInc <= 15) {
      timeApp = imgH;
    } else if (rotInc >= 15.75 && rotInc <= 27) {
      timeApp = imgA;
    } else if (rotInc >= 34.5 && rotInc <= 45.75) {
      timeApp = imgB;
    } else if (rotInc >= 46.5 && rotInc <= 57.75) {
      timeApp = imgC;
    } else if (rotInc >= 58.5 && rotInc <= 69.5) {
      timeApp = imgD;
    } else if (rotInc >= 81.75 && rotInc <= 93) {
      timeApp = imgE;
    } else if (rotInc >= 93.75 && rotInc <= 107.5) {
      timeApp = imgF;
    }
  }


  if (rotInc > 15 && rotInc < 15.75 || rotInc > 27 && rotInc < 27.25 || rotInc > 34.25 && rotInc < 34.5 || rotInc > 45.75 && rotInc < 46.5 || rotInc > 57.75 &&  rotInc < 58.5 || rotInc > 93 && rotInc < 93.75) {
    timeApp = imgBell;
  } else if (rotInc >= 27.25 && rotInc <= 34.25) {
    timeApp = imgSnack;
  }
  //Remove the else statement above in the end!!

  int Partialheight = height * 1/5;
  pushMatrix();
  translate(width/2, height - Partialheight);
  rotate(radians(90.9 + rotInc));
  image(timeApp, 0, height - (Partialheight + 100), 100, 100);
  popMatrix();
  fill(11, 122, 3);
  rect(0, height - Partialheight, width, width);
}
