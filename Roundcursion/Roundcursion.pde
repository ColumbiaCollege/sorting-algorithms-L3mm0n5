void setup() {
  //size(1920,1080);
  size(720, 720);
  background(250);
}

void draw() {
  //noStroke();
  roundcursion(width/2, height/2, 175);
  delay(500);
}

void roundcursion(float x, float y, float r) {
  fill(randColor());
  //stroke(randColor());
  float half = (r/3);
  ellipse(x, y, r*2, r*2);
  if (r*2>15) {
    roundcursion(x, y, half);

    //roundcursion(x+r/3, y+r/3, half);
    //roundcursion(x-r/3, y+r/3, half);
    //roundcursion(x+r/3, y-r/3, half);
    //roundcursion(x-r/3, y-r/3, half);

    //roundcursion((x+r/3)/2, (y+r/3)/2, half);
    //roundcursion((x-r/3)/2, (y+r/3)/2, half);
    //roundcursion((x+r/3)/2, (y-r/3)/2, half);
    //roundcursion((x-r/3)/2, (y-r/3)/2, half);

    roundcursion(x, y-r, half);
    roundcursion(x, y+r, half);
    roundcursion(x-r, y, half);
    roundcursion(x+r, y, half);

    roundcursion(x-r/1.5, y-r/1.5, half);
    roundcursion(x+r/1.5, y-r/1.5, half);
    roundcursion(x-r/1.5, y+r/1.5, half);
    roundcursion(x+r/1.5, y+r/1.5, half); 

    roundcursion(x, y, half);
  }
}
color randColor() {
  return color(random(150, 255), random(150, 255), random(150, 255));
}
