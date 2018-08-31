PImage img;
void setup () {
  fullScreen();
  img = loadImage("Sun.PNG");
}

void draw () {
  int Partialheight = height * 1/5;
  background(0, 0, 0);
  image(img, 0, 0, 100, 100);
  fill(11, 122, 3);
  rect(0, height - Partialheight, width, width);
}
