class mouseInterface {

  mouseInterface() {
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
  
}
