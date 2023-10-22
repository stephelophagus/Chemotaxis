
Cat [] mrow = new Cat[10];

void setup() {
  size(500, 500);
  background (#BFC1C1);
  noLoop();
  for (int i = 0; i<mrow.length; i++) {
    mrow[i] = new Cat();
  }
}
void draw() {
  fill(#FF0000);
  ellipse(mouseX, mouseY, 10,10);
  for (int i = 0; i<mrow.length; i++) {
    mrow[i].move();
    mrow[i].show();
  }
}

class Cat {
  int myX, myY, strokeColor;
  Cat()
  {
    myX = 250;
    myY = 250;
    strokeColor = color((int)(Math.random()*255)+1, (int)(Math.random()*255)+1, (int)(Math.random()*255)+1);
  }
  void show () {
    stroke(strokeColor);
    fill(#FFF0F0);
    ellipse(myX, myY, 30, 30);
    triangle(myX-12, myY-11, myX-6, myY-14, myX-9, myY-21);
    triangle(myX+12, myY-11, myX+6, myY -14, myX+9, myY-21);
    arc(myX-3, myY+5, 5, 5, 0, PI);
    arc(myX+3, myY+5, 5, 5, 0, PI);
    line(myX+12, myY-2, myX+18, myY-5);
    line(myX+12, myY, myX+18, myY);
    line(myX+12, myY+2, myX+18, myY+5);
    line(myX-12, myY-2, myX-18, myY-5);
    line(myX-12, myY, myX-18, myY);
    line(myX-12, myY+2, myX-18, myY+5);
    fill(0);
    ellipse(myX-6, myY-3, 3, 3);
    ellipse(myX+6, myY-3, 3, 3);
    if (mouseX > myX) {
      myX = myX + (int)((Math.random()*10)+3);
    } else {
      myX = myX + (int)((Math.random()*10)-6);
    }
    if (mouseY > myY){
      myY = myY + (int)((Math.random()*10)+3);
    }
    else{
      myY = myY + (int)((Math.random()*10)-6);
    }
  }
  void move () {
    myX += (int)(Math.random()*5)+1;
    myY +=(int)(Math.random()*5)-1;
  }
}



