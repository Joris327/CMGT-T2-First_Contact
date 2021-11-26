class Right_Scene
{
  void update()
  {
    if (rightPuzzleSolved == false)//which background to display
    {
      image(rightRoomUnsolved,320,0);
    }
    else
    {
      image(rightRoomSolved,320,0);
    }
    
    
    if (foundGem == false && rightPuzzleSolved == true)//updates the gem item
    {
      //image(statueGem,320,0);
      Gem.update();
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
      image(rightPuzzlePiece00, 785, 245);
    }
    if (trPiece.clickCntr == 1) {
      image(rightPuzzlePiece01, 785, 245);
    }
    if (trPiece.clickCntr == 2) {
      image(rightPuzzlePiece02, 785, 245);
    }
    if (trPiece.clickCntr == 3) {
      image(rightPuzzlePiece03, 785, 245);
    }

    if (tlPiece.clickCntr == 0) {
      image(rightPuzzlePiece04, 1010, 245);
    }
    if (tlPiece.clickCntr == 1) {
      image(rightPuzzlePiece05, 1010, 245);
    }
    if (tlPiece.clickCntr == 2) {
      image(rightPuzzlePiece06, 1010, 245);
    }
    if (tlPiece.clickCntr == 3) {
      image(rightPuzzlePiece07, 1010, 245);
    }

    if (brPiece.clickCntr == 0) {
      image(rightPuzzlePiece08, 805, 505);
    }
    if (brPiece.clickCntr == 1) {
      image(rightPuzzlePiece09, 805, 505);
    }
    if (brPiece.clickCntr == 2) {
      image(rightPuzzlePiece10, 805, 505);
    }
    if (brPiece.clickCntr == 3) {
      image(rightPuzzlePiece11, 805, 505);
    }

    if (blPiece.clickCntr == 0) {
      image(rightPuzzlePiece12, 1000, 505);
    }
    if (blPiece.clickCntr == 1) {
      image(rightPuzzlePiece13, 1000, 505);
    }
    if (blPiece.clickCntr == 2) {
      image(rightPuzzlePiece14, 1000, 505);
    }
    if (blPiece.clickCntr == 3) {
      image(rightPuzzlePiece15, 1000, 505);
    }

    //win condition for the puzzle
    if (trPiece.clickCntr == 0) {
      topRightSolved = true;
      //println("Top Right Solved");
    }
    else {
      topRightSolved = false;
    }
    
    if (tlPiece.clickCntr == 0) {
      topLeftSolved = true;
      //println("Top Left Solved");
    }
    else {
      topLeftSolved = false;
    }
    
    if (brPiece.clickCntr == 0) {
      bottomRightSolved = true;
      //println("Bottom Right Solved");
    }
    else {
      bottomRightSolved = false;
    }
    
    if (blPiece.clickCntr == 0) {
      bottomLeftSolved = true;
      //println("Bottom Left Solved");
    }
    else {
      bottomLeftSolved = false;
    }

    if (topRightSolved == true && topLeftSolved == true && bottomRightSolved == true && bottomLeftSolved == true) {
      rightPuzzleSolved = true;
      //println("Right Puzzle Solved");
    }
    else
    {
      rightPuzzleSolved = false;
    }
    
    push(); //mouse hover detection for the mouse halo.
    imageMode(CENTER);
    if (mouseX < 420 && mouseX > 320 && mouseY < 960 && mouseY > 400) //left door
    {
      cursor(mouseHalo);
    }
    else if(mouseX > (Gem.objectX) //gameobject
      && mouseX < (Gem.objectX+Gem.sizeX)
      && mouseY > (Gem.objectY)
      && mouseY < (Gem.objectY+Gem.sizeY)
      && foundGem == false && rightPuzzleSolved == true)
    {
      cursor(mouseHalo);
    }
    else if (mouseX>785 && mouseX<895 && mouseY>245 && mouseY<360) {
      cursor(mouseHalo);
    }
    else if (mouseX>1010 && mouseX<1120 && mouseY>245 && mouseY<360) {
      cursor(mouseHalo);
    }
    else if (mouseX>795 && mouseX<905 && mouseY>505 && mouseY<615) {
      cursor(mouseHalo);
    }
    else if (mouseX>1010 && mouseX<1120 && mouseY>505 && mouseY<615) {
      cursor(mouseHalo);
    }
    else
    {
      cursor(ARROW);
    }
    pop();
    
  }
  
  void mouseClicked()
  {
      //change counter value with each click
    if (mouseX>750 && mouseX<900 && mouseY>250 && mouseY<400) {
      trPiece.clickCntr++;
    }
    else if (mouseX>1025 && mouseX<1175 && mouseY>250 && mouseY<400) {
      tlPiece.clickCntr++;
    }
    else if (mouseX>750 && mouseX<900 && mouseY>450 && mouseY<600) {
      brPiece.clickCntr++;
    }
    else if (mouseX>1025 && mouseX<1175 && mouseY>450 && mouseY<600) {
      blPiece.clickCntr++;
    }
  }
}


class rightPuzzle {
  //click counter value
  int clickCntr = (int)random(1,4);
}
