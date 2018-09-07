class weatherControl {

  weatherControl() {
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
}
