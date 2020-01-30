class Ripple {

  float x, y, size, speed, t;

  Ripple() {
    x = random(0, width);
    y = random(0, height);
    size = random(0, 200);
    speed = 2;
  }

  void act() {
    size = size + speed;
    if (size > 200) {
      y = random(0, height);
      x = random(0, width);
      size = random(0,200);
    }
  }
  void show() {
    noFill();
    strokeWeight(1);
    t = map(size, 0, 200, 255, 0);
    stroke(255,t);
    ellipse(x, y, size, size/2);
  }
}
