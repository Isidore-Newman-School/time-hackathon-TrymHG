class Clock {
  
  Clock(){
  }
  
  void display(){
    
  }
  
  void imgSet(){
    
     if (blockDay == "A") {
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

  if (blockDay == "B") {
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

  if (blockDay == "C") {
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

  if (blockDay == "D") {
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

  if (blockDay == "E") {
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

  if (blockDay == "F") {
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

  if (blockDay == "G") {
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

  if (blockDay == "H") {
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

  int Partialheight = height * 1/5;
  pushMatrix();
  translate(width/2, height - Partialheight);
  rotate(radians(90.9 + rotInc));
  image(timeApp, 0, height - (Partialheight + 100), 100, 100);
  popMatrix();
  fill(11, 122, 3);
  rect(0, height - Partialheight, width, width);
    
  }

}
