PImage leftPuzzleRoom;
PImage leftPuzzlePiece0;
PImage leftPuzzlePiece1;
PImage leftPuzzlePiece2;
PImage leftPuzzlePiece3;

boolean leftSolved = false;
boolean middleSolved = false;
boolean rightSolved = false;

boolean leftPuzzleSolved = false;

leftPuzzle leftPiece = new leftPuzzle();
leftPuzzle middlePiece = new leftPuzzle();
leftPuzzle rightPiece = new leftPuzzle();

class leftPuzzle {
  //click counter value
  int clickCntr;
}

//make 4 images with different rotations
//load a different image with each click
//click counter values 0-3, when value = 4, loop back to 0.

class Left_Puzzle
{
  void update()
  {
    image(leftPuzzleRoom, 320, 0);

    //change counter value with each click
    if (mousePressed && mouseX>479 && mouseX<780 && mouseY>354 && mouseY<660) {
      leftPiece.clickCntr++;
    }

    if (mousePressed && mouseX>799 && mouseX<1100 && mouseY>354 && mouseY<660) {
      middlePiece.clickCntr++;
    }

    if (mousePressed && mouseX>1119 && mouseX<1420 && mouseY>354 && mouseY<660) {
      rightPiece.clickCntr++;
    }

    //reset values over 4 back to 0
    if (leftPiece.clickCntr == 4) {
      leftPiece.clickCntr = 0;
    }

    if (middlePiece.clickCntr == 4) {
      middlePiece.clickCntr = 0;
    }

    if (rightPiece.clickCntr == 4) {
      rightPiece.clickCntr = 0;
    }

    //change the image with each counter value increase
    if (leftPiece.clickCntr == 0) {
      image(leftPuzzlePiece0, 480, 355);
    }
    if (leftPiece.clickCntr == 1) {
      image(leftPuzzlePiece1, 480, 355);
    }
    if (leftPiece.clickCntr == 2) {
      image(leftPuzzlePiece2, 480, 355);
    }
    if (leftPiece.clickCntr == 3) {
      image(leftPuzzlePiece3, 480, 355);
    }


    if (middlePiece.clickCntr == 0) {
      image(leftPuzzlePiece0, 800, 355);
    }
    if (middlePiece.clickCntr == 1) {
      image(leftPuzzlePiece1, 800, 355);
    }
    if (middlePiece.clickCntr == 2) {
      image(leftPuzzlePiece2, 800, 355);
    }
    if (middlePiece.clickCntr == 3) {
      image(leftPuzzlePiece3, 800, 355);
    }

    if (rightPiece.clickCntr == 0) {
      image(leftPuzzlePiece0, 1120, 355);
    }
    if (rightPiece.clickCntr == 1) {
      image(leftPuzzlePiece1, 1120, 355);
    }
    if (rightPiece.clickCntr == 2) {
      image(leftPuzzlePiece2, 1120, 355);
    }
    if (rightPiece.clickCntr == 3) {
      image(leftPuzzlePiece3, 1120, 355);
    }

    //win condition for the puzzle
    if (leftPiece.clickCntr == 1) {
      leftSolved = true;
      println("Left Solved");
    }
    if (middlePiece.clickCntr == 0) {
      middleSolved = true;
      println("Middle Solved");
    }
    if (rightPiece.clickCntr == 3) {
      rightSolved = true;
      println("Right Solved");
    }

    if (leftSolved == true && middleSolved == true && rightSolved == true) {
      leftPuzzleSolved = true;
      println("Left Puzzle Solved");
    }
  }
}
