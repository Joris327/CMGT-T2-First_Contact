PImage skullPuzzle;
PImage skull1;
PImage skull2;
PImage skull3;
PImage skull4;
PImage skull5;
PImage skull6;

boolean inPosition1 = false;
boolean inPosition2 = false;
boolean inPosition3 = false;
boolean inPosition4 = false;
boolean inPosition5 = false;
boolean inPosition6 = false;

boolean isBeingDragged1 = false;
boolean isBeingDragged2 = false;
boolean isBeingDragged3 = false;
boolean isBeingDragged4 = false;
boolean isBeingDragged5 = false;
boolean isBeingDragged6 = false;

boolean finalSolved = false;

float x1 = 1300;
float y1 = 20;

float x2 = 380;
float y2 = 270;

float x3 = 1300;
float y3 = 520;

float x4 = 1270;
float y4 = 270;

float x5 = 350;
float y5 = 20;

float x6 = 350;
float y6 = 520;

finalPuzzle p1 = new finalPuzzle();
finalPuzzle p2 = new finalPuzzle();
finalPuzzle p3 = new finalPuzzle();
finalPuzzle p4 = new finalPuzzle();
finalPuzzle p5 = new finalPuzzle();
finalPuzzle p6 = new finalPuzzle();


class finalPuzzle {
}



class Final_Puzzle
{

  void mouseReleased() {
    isBeingDragged1 = false;
    isBeingDragged2 = false;
    isBeingDragged3 = false;
    isBeingDragged4 = false;
    isBeingDragged5 = false;
    isBeingDragged6 = false;

    //snap to top left
    if (x1 > 665 && x1 < 705 && y1 > 140 && y1 < 180) {
      x1=685;
      y1=160;
    }
    if (x2 > 665 && x2 < 705 && y2 > 140 && y2 < 180) {
      x2=685;
      y2=160;
    }
    if (x3 > 665 && x3 < 705 && y3 > 140 && y3 < 180) {
      x3=685;
      y3=160;
    }
    if (x4 > 665 && x4 < 705 && y4 > 140 && y4 < 180) {
      x4=685;
      y4=160;
    }
    if (x5 > 665 && x5 < 705 && y5 > 140 && y5 < 180) {
      x5=685;
      y5=160;
    }
    if (x6 > 665 && x6 < 705 && y6 > 140 && y6 < 180) {
      x6=685;
      y6=160;
    }

    //snap to top right
    if (x1 > 940 && x1 < 980 && y1 > 140 && y1 < 180) {
      x1=960;
      y1=160;
    }
    if (x2 > 940 && x2 < 980 && y2 > 140 && y2 < 180) {
      x2=960;
      y2=160;
    }
    if (x3 > 940 && x3 < 980 && y3 > 140 && y3 < 180) {
      x3=960;
      y3=160;
    }
    if (x4 > 940 && x4 < 980 && y4 > 140 && y4 < 180) {
      x4=960;
      y4=160;
    }
    if (x5 > 940 && x5 < 980 && y5 > 140 && y5 < 180) {
      x5=960;
      y5=160;
    }
    if (x6 > 940 && x6 < 980 && y6 > 140 && y6 < 180) {
      x6=960;
      y6=160;
    }

    //snap to middle left
    if (x1 > 665 && x1 < 700 && y1 > 370 && y1 < 420) {
      x1=685;
      y1=400;
    }
    if (x2 > 665 && x2 < 700 && y2 > 370 && y2 < 420) {
      x2=685;
      y2=400;
    }
    if (x3 > 665 && x3 < 700 && y3 > 370 && y3 < 420) {
      x3=685;
      y3=400;
    }
    if (x4 > 665 && x4 < 700 && y4 > 370 && y4 < 420) {
      x4=685;
      y4=400;
    }
    if (x5 > 665 && x5 < 700 && y5 > 370 && y5 < 420) {
      x5=685;
      y5=400;
    }
    if (x6 > 665 && x6 < 700 && y6 > 370 && y6 < 420) {
      x6=685;
      y6=400;
    }
    
    //snap to middle right
    if (x1 > 940 && x1 < 980 && y1 > 370 && y1 < 420) {
      x1=960;
      y1=400;
    }
    if (x2 > 940 && x2 < 980 && y2 > 370 && y2 < 420) {
      x2=960;
      y2=400;
    }
    if (x3 > 940 && x3 < 980 && y3 > 370 && y3 < 420) {
      x3=960;
      y3=400;
    }
    if (x4 > 940 && x4 < 980 && y4 > 370 && y4 < 420) {
      x4=960;
      y4=400;
    }
    if (x5 > 940 && x5 < 980 && y5 > 370 && y5 < 420) {
      x5=960;
      y5=400;
    }
    if (x6 > 940 && x6 < 980 && y6 > 370 && y6 < 420) {
      x6=960;
      y6=400;
    }
    
    //snap to bottom left
    if (x1 > 665 && x1 < 700 && y1 > 610 && y1 < 660) {
      x1=685;
      y1=640;
    }
    if (x2 > 665 && x2 < 700 && y2 > 610 && y2 < 660) {
      x2=685;
      y2=640;
    }
    if (x3 > 665 && x3 < 700 && y3 > 610 && y3 < 660) {
      x3=685;
      y3=640;
    }
    if (x4 > 665 && x4 < 700 && y4 > 610 && y4 < 660) {
      x4=685;
      y4=640;
    }
    if (x5 > 665 && x5 < 700 && y5 > 610 && y5 < 660) {
      x5=685;
      y5=640;
    }
    if (x6 > 665 && x6 < 700 && y6 > 610 && y6 < 660) {
      x6=685;
      y6=640;
    }
    
    //snap to bottom right
    if (x1 > 940 && x1 < 980 && y1 > 610 && y1 < 660) {
      x1=960;
      y1=640;
    }
    if (x2 > 940 && x2 < 980 && y2 > 610 && y2 < 660) {
      x2=960;
      y2=640;
    }
    if (x3 > 940 && x3 < 980 && y3 > 610 && y3 < 660) {
      x3=960;
      y3=640;
    }
    if (x4 > 940 && x4 < 980 && y4 > 610 && y4 < 660) {
      x4=960;
      y4=640;
    }
    if (x5 > 940 && x5 < 980 && y5 > 610 && y5 < 660) {
      x5=960;
      y5=640;
    }
    if (x6 > 940 && x6 < 980 && y6 > 610 && y6 < 660) {
      x6=960;
      y6=640;
    }

    //win condition
    if (x1 == 960 && y1 == 640) {
      inPosition1 = true;
    }
    if (x2 == 685 && y2 == 640) {
      inPosition2 = true;
    }
    if (x3 == 960 && y3 == 400) {
      inPosition3 = true;
    }
    if (x4 == 685 && y4 == 400) {
      inPosition4 = true;
    }
    if (x5 == 960 && y5 == 160) {
      inPosition5 = true;
    }
    if (x6 == 685 && y6 == 160) {
      inPosition6 = true;
    }
  }

  void update()
  {
    image(skullPuzzle, 320, 0);
    image(skull5, x5, y5);
    image(skull2, x2, y2);
    image(skull6, x6, y6);
    image(skull1, x1, y1);
    image(skull4, x4, y4);
    image(skull3, x3, y3);

    if (mousePressed && mouseX > x1 && mouseX < x1 + 275 && mouseY > y1 && mouseY < y1 + 240 && isBeingDragged2 == false && isBeingDragged3 == false && isBeingDragged4 == false && isBeingDragged5 == false && isBeingDragged6 == false) {
      isBeingDragged1 = true;
      x1=mouseX-137;
      y1=mouseY-120;
    }
    if (mousePressed && mouseX > x2 && mouseX < x2 + 275 && mouseY > y2 && mouseY < y2 + 240 && isBeingDragged1 == false && isBeingDragged3 == false && isBeingDragged4 == false && isBeingDragged5 == false && isBeingDragged6 == false) {
      isBeingDragged2 = true;
      x2=mouseX-137;
      y2=mouseY-120;
    }
    if (mousePressed && mouseX > x3 && mouseX < x3 + 275 && mouseY > y3 && mouseY < y3 + 240 && isBeingDragged1 == false && isBeingDragged2 == false && isBeingDragged4 == false && isBeingDragged5 == false && isBeingDragged6 == false) {
      isBeingDragged3 = true;
      x3=mouseX-137;
      y3=mouseY-120;
    }
    if (mousePressed && mouseX > x4 && mouseX < x4 + 275 && mouseY > y4 && mouseY < y4 + 240 && isBeingDragged1 == false && isBeingDragged3 == false && isBeingDragged2 == false && isBeingDragged5 == false && isBeingDragged6 == false) {
      isBeingDragged4 = true;
      x4=mouseX-137;
      y4=mouseY-120;
    }
    if (mousePressed && mouseX > x5 && mouseX < x5 + 275 && mouseY > y5 && mouseY < y5 + 240 && isBeingDragged1 == false && isBeingDragged3 == false && isBeingDragged4 == false && isBeingDragged2 == false && isBeingDragged6 == false) {
      isBeingDragged5 = true;
      x5=mouseX-137;
      y5=mouseY-120;
    }
    if (mousePressed && mouseX > x6 && mouseX < x6 + 275 && mouseY > y6 && mouseY < y6 + 240 && isBeingDragged1 == false && isBeingDragged3 == false && isBeingDragged4 == false && isBeingDragged5 == false && isBeingDragged2 == false) {
      isBeingDragged6 = true;
      x6=mouseX-137;
      y6=mouseY-120;
    }

    if (inPosition1 == true
      && inPosition2 == true
      && inPosition3 == true
      && inPosition4 == true
      && inPosition5 == true
      && inPosition6 == true)
    {
      finalSolved = true;
      println("GAME COMPLETE");
    }
  }
}
