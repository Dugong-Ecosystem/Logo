public void setup() {
  size(500, 500);
  background(0xff000000);
  noStroke();
  fill(0xff012345);
  ellipse(width/2, height/2, width, height);
  noFill();
  new Coin(width/2, height/2, width*9/10, 50).display();
  save("./data/logo.png");
  exit();
}
