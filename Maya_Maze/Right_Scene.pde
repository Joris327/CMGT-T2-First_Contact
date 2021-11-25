PImage rightPuzzlePiece00;
PImage rightPuzzlePiece01;
PImage rightPuzzlePiece02;
PImage rightPuzzlePiece03;

PImage rightPuzzlePiece04;
PImage rightPuzzlePiece05;
PImage rightPuzzlePiece06;
PImage rightPuzzlePiece07;

PImage rightPuzzlePiece08;
PImage rightPuzzlePiece09;
PImage rightPuzzlePiece10;
PImage rightPuzzlePiece11;

PImage rightPuzzlePiece12;
PImage rightPuzzlePiece13;
PImage rightPuzzlePiece14;
PImage rightPuzzlePiece15;

boolean trSolved = false;
boolean tlSolved = false;
boolean brSolved = false;
boolean blSolved = false;

boolean rightPuzzleSolved = false;

rightPuzzle trPiece = new rightPuzzle();
rightPuzzle tlPiece = new rightPuzzle();
rightPuzzle brPiece = new rightPuzzle();
rightPuzzle blPiece = new rightPuzzle();

class rightPuzzle {
  //click counter value
  int clickCntr;
}

class Right_Scene
{
  void update()
  {
    image(rightRoom, 320, 0);

    //change counter value with each click
    if (mousePressed && mouseX>750 && mouseX<900 && mouseY>250 && mouseY<400) {
      trPiece.clickCntr++;
    }
    if (mousePressed && mouseX>1025 && mouseX<1175 && mouseY>250 && mouseY<400) {
      tlPiece.clickCntr++;
    }
    if (mousePressed && mouseX>750 && mouseX<900 && mouseY>450 && mouseY<600) {
      brPiece.clickCntr++;
    }
    if (mousePressed && mouseX>1025 && mouseX<1175 && mouseY>450 && mouseY<600) {
      blPiece.clickCntr++;
    }

    //reset values over 4 back to 0
    if (trPiece.clickCntr == 4) {
      trPiece.clickCntr = 0;
    }

    if (tlPiece.clickCntr == 4) {
      tlPiece.clickCntr = 0;
    }

    if (brPiece.clickCntr == 4) {
      brPiece.clickCntr = 0;
    }

    if (blPiece.clickCntr == 4) {
      blPiece.clickCntr = 0;
    }

    //change the image with each counter value increase
    if (trPiece.clickCntr == 0) {
      image(rightPuzzlePiece00, 750, 250);
    }
    if (trPiece.clickCntr == 1) {
      image(rightPuzzlePiece01, 750, 250);
    }
    if (trPiece.clickCntr == 2) {
      image(rightPuzzlePiece02, 750, 250);
    }
    if (trPiece.clickCntr == 3) {
      image(rightPuzzlePiece03, 750, 250);
    }

    if (tlPiece.clickCntr == 0) {
      image(rightPuzzlePiece04, 1025, 250);
    }
    if (tlPiece.clickCntr == 1) {
      image(rightPuzzlePiece05, 1025, 250);
    }
    if (tlPiece.clickCntr == 2) {
      image(rightPuzzlePiece06, 1025, 250);
    }
    if (tlPiece.clickCntr == 3) {
      image(rightPuzzlePiece07, 1025, 250);
    }

    if (brPiece.clickCntr == 0) {
      image(rightPuzzlePiece08, 750, 450);
    }
    if (brPiece.clickCntr == 1) {
      image(rightPuzzlePiece09, 750, 450);
    }
    if (brPiece.clickCntr == 2) {
      image(rightPuzzlePiece10, 750, 450);
    }
    if (brPiece.clickCntr == 3) {
      image(rightPuzzlePiece11, 750, 450);
    }

    if (blPiece.clickCntr == 0) {
      image(rightPuzzlePiece12, 1025, 450);
    }
    if (blPiece.clickCntr == 1) {
      image(rightPuzzlePiece13, 1025, 450);
    }
    if (blPiece.clickCntr == 2) {
      image(rightPuzzlePiece14, 1025, 450);
    }
    if (blPiece.clickCntr == 3) {
      image(rightPuzzlePiece15, 1025, 450);
    }

    //win condition for the puzzle
    if (trPiece.clickCntr == 1) {
      trSolved = true;
      println("Top Right Solved");
    }
    if (tlPiece.clickCntr == 0) {
      tlSolved = true;
      println("Top Left Solved");
    }
    if (brPiece.clickCntr == 3) {
      brSolved = true;
      println("Bottom Right Solved");
    }
    if (blPiece.clickCntr == 3) {
      blSolved = true;
      println("Bottom Left Solved");
    }

    if (trSolved == true && tlSolved == true && brSolved == true && blSolved == true) {
      rightPuzzleSolved = true;
      println("Right Puzzle Solved");
    }

    //if (rightPuzzleSolved == true({
    //drop the relic
    //{

    if (foundGem == false)
    {
      //rect(1150,450,100,100);
      image(statueGem, 320, 0);
    }
  }
}
