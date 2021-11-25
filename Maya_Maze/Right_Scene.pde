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



    //reset values over 4 back to 0
    if (trPiece.clickCntr == 4) {
      leftPiece.clickCntr = 0;
    }

    if (tlPiece.clickCntr == 4) {
      middlePiece.clickCntr = 0;
    }

    if (brPiece.clickCntr == 4) {
      rightPiece.clickCntr = 0;
    }

    if (blPiece.clickCntr == 4) {
      rightPiece.clickCntr = 0;
    }

    //change the image with each counter value increase
    if (trPiece.clickCntr == 0) {
      image(rightPuzzlePiece00, 480, 355);
    }
    if (trPiece.clickCntr == 1) {
      image(rightPuzzlePiece01, 480, 355);
    }
    if (trPiece.clickCntr == 2) {
      image(rightPuzzlePiece02, 480, 355);
    }
    if (trPiece.clickCntr == 3) {
      image(rightPuzzlePiece03, 480, 355);
    }

    if (tlPiece.clickCntr == 0) {
      image(rightPuzzlePiece04, 480, 355);
    }
    if (tlPiece.clickCntr == 1) {
      image(rightPuzzlePiece05, 480, 355);
    }
    if (tlPiece.clickCntr == 2) {
      image(rightPuzzlePiece06, 480, 355);
    }
    if (tlPiece.clickCntr == 3) {
      image(rightPuzzlePiece07, 480, 355);
    }

    if (brPiece.clickCntr == 0) {
      image(rightPuzzlePiece08, 480, 355);
    }
    if (brPiece.clickCntr == 1) {
      image(rightPuzzlePiece09, 480, 355);
    }
    if (brPiece.clickCntr == 2) {
      image(rightPuzzlePiece10, 480, 355);
    }
    if (brPiece.clickCntr == 3) {
      image(rightPuzzlePiece11, 480, 355);
    }

    if (blPiece.clickCntr == 0) {
      image(rightPuzzlePiece12, 480, 355);
    }
    if (blPiece.clickCntr == 1) {
      image(rightPuzzlePiece13, 480, 355);
    }
    if (blPiece.clickCntr == 2) {
      image(rightPuzzlePiece14, 480, 355);
    }
    if (blPiece.clickCntr == 3) {
      image(rightPuzzlePiece15, 480, 355);
    }

    //win condition for the puzzle
    if (trPiece.clickCntr == 1) {
      leftSolved = true;
      println("Top Right Solved");
    }
    if (tlPiece.clickCntr == 0) {
      middleSolved = true;
      println("Top Left Solved");
    }
    if (brPiece.clickCntr == 3) {
      rightSolved = true;
      println("Bottom Right Solved");
    }
    if (blPiece.clickCntr == 3) {
      rightSolved = true;
      println("Bottom Left Solved");
    }

    if (trSolved == true && tlSolved == true && brSolved == true && blSolved == true) {
      rightPuzzleSolved = true;
      println("Right Puzzle Solved");

      if (foundGem == false)
      {
        //rect(1150,450,100,100);
        image(statueGem, 320, 0);
      }
    }
  }
