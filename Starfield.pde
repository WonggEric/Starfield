Particle[] star = new Particle[1000];
void setup() {
  size(1000, 1000);
  for (int i = 0; i < star.length - 3; i++) {
    star[i] = new Particle();
  }
    for (int i = star.length - 3; i < star.length; i++) {
    star[i] = new OddballParticle();
  }
}

void draw() {
  background(0);
  for (int i = 0; i<star.length; i++) {
    star[i].show();
    star[i].move();
  }
}

class Particle {
  double myX, myY, myAngle, mySpeed;
  int myColor;
  int myHeight,myWidth;
  Particle() {
    myX = 500;
    myY = 500;
    myAngle =  Math.random() * (2 * Math.PI);
    mySpeed = (double)(Math.random()*3);
    myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    myHeight = 7;
    myWidth = 7;
  }

  void move() {
    myX += Math.cos(myAngle)* mySpeed;
    myY += Math.sin(myAngle)* mySpeed;
  }

  void show() {
    noStroke();
    fill(myColor);
    ellipse((float)myX, (float)myY,myHeight,myWidth);
  }
}

class OddballParticle extends Particle {
  OddballParticle() {
    myX = 500;
    myY = 500;
    myAngle =  Math.random() * (2 * Math.PI); 
    mySpeed = (double)(Math.random()*3);
    myHeight = 60;
    myWidth = 60;
    myColor = color(128,128,128);
  }

 void move() {
    myX += Math.cos(myAngle) * 2;
    myY += Math.sin(myAngle) * 2;
    myX += (int)(Math.random() * 10) - 4;  // Jitter in the x direction (-2 to +2)
    myY += (int)(Math.random() * 10) - 4;  // Jitter in the y direction (-2 to +2)
  }
}
