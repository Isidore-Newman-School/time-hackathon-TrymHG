class imageLoading {

  imageLoading() {
  }

  void images() {
    imgSun = loadImage("Sun.PNG");
    imgTeleSun = loadImage("TeleSun.png");
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
    imgBird = loadImage("Bird.png");
    imgTextBubble = loadImage("TextBubble.png");
    imgFlower = loadImage("Flower.png");
    imgTree = loadImage("Tree.png");
    imgUmbrellaMan = loadImage("UmbrellaMan.png");
  }

  void displayBlocks() {
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
}
