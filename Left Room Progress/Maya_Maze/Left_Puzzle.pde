PImage leftPuzzleRoom;
PImage leftPuzzlePiece;

boolean leftSolved = false;
boolean middleSolved = false;
boolean rightSolved = false;

leftPuzzle leftPiece;
leftPuzzle middlePiece;
leftPuzzle rightPiece;

class leftPuzzle {
  //value to allow for the boolean to go from false to true after x amount of rotations.
  //r could be 0-3. If its 3, loop back to 0
  int r;
}

//need to add code that allows the player to rotate the individual pieces by clicking them.

class Left_Puzzle
{
  void update()
  {
    image(leftPuzzleRoom, 320, 0);

    leftPiece = new leftPuzzle();
    image(leftPuzzlePiece, 480, 355);
    leftPiece.r = 0;

    middlePiece = new leftPuzzle();
    image(leftPuzzlePiece, 800, 355);
    middlePiece.r = 0;

    rightPiece = new leftPuzzle();
    image(leftPuzzlePiece, 1120, 355);
    rightPiece.r = 0;
    
    if (leftPiece.r == 1) {
      leftSolved = true;
      println("Left Solved");
    }
    if (middlePiece.r == 0) {
      middleSolved = true;
      println("Middle Solved");
    }
    if (middlePiece.r == 3) {
      middleSolved = true;
      println("Right Solved");
    }
  }
}
