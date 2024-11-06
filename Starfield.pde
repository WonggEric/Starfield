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
    myX = 400;
    myY = 400;
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
    myX = 400;
    myY = 400;
    myAngle =  Math.random() * (2 * Math.PI); 
    mySpeed = (double)(Math.random()*2);
    myHeight = 50;
    myWidth = 50;
    myColor = color(128,128,128);
  }
}



