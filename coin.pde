class Coin {
  PFont f;
  int x, y, r, n;
  
  Coin(int X, int Y, int D, int N) {
    x = X;
    y = Y;
    r = D/2;
    n = N;
    f = createFont("Georgia", r/0.75);
  }
  
  public void display() {
    fill(#ffffff);
    noStroke();
    beginShape();

    for(int i=0; i<n; i++) {
      vertex(x+(r-r/45)*cos(i*TWO_PI/n), y+(r-r/45)*sin(i*TWO_PI/n));
      vertex(x+(r+r/45)*cos(i*TWO_PI/n), y+(r+r/45)*sin(i*TWO_PI/n));
    }

    beginContour();

    for(int i=(n-1); i>=0; i--) {
      vertex(x+(r-r/45)*cos(i*TWO_PI/n), y+(r-r/45)*sin(i*TWO_PI/n));
      vertex(x+(r+r/45)*cos(i*TWO_PI/n), y+(r+r/45)*sin(i*TWO_PI/n));
    }

    endContour();
    endShape(CLOSE);

    strokeWeight(r/112.5);
    stroke(#ffffff);
    strokeWeight(r/45);
    noFill();
    ellipse(x, y, 2*r-r/9, 2*r-r/9);

    textAlign(CENTER);
    textSize(r/0.75);
    textFont(f);
    fill(#ffffff);
    text("D", x, y+(r/2.25+r/45));

    noStroke();
    rect(x-(r/11.25+r/112.5), y-r/1.8, (r/11.25+r/56.25), r/0.9);
    rect(x-r/2.25, y-r/18.75, r/1.8, (r/11.25+r/56.25));
    
    fill(#012345);
    rect(x-r/15, y-r/1.8, r/22.5, r/0.9);
  }
}
