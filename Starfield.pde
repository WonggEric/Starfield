Particle[] star = new Particle[1000];
void setup() {
  size(1000, 1000);
  for (int i = 0; i<star.length-1; i++) {
    star[i] = new Particle();
  }
  for (int i = star.length-1; i<star.length; i++) {
    star[i] =  new OddballParticle();
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
    myColor = color(255);
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
    myHeight = 100;
    myWidth = 100;
    myColor = color(128,128,128);
  }
}
