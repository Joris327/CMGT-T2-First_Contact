class Right_Scene
{
  void update()
  {
    image(rightRoom,320,0);
    
    if (foundGem == false && rightPuzzleSolved == true)
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
      topRightSolved = true;
      //println("Top Right Solved");
    }
    else {
      topRightSolved = false;
    }
    
    if (tlPiece.clickCntr == 1) {
      topLeftSolved = true;
      //println("Top Left Solved");
    }
    else {
      topLeftSolved = false;
    }
    
    if (brPiece.clickCntr == 1) {
      bottomRightSolved = true;
      //println("Bottom Right Solved");
    }
    else {
      bottomRightSolved = false;
    }
    
    if (blPiece.clickCntr == 1) {
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
    
    push();
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
    else if (mouseX>750 && mouseX<900 && mouseY>250 && mouseY<400) {
      cursor(mouseHalo);
    }
    else if (mouseX>1025 && mouseX<1175 && mouseY>250 && mouseY<400) {
      cursor(mouseHalo);
    }
    else if (mouseX>750 && mouseX<900 && mouseY>450 && mouseY<600) {
      cursor(mouseHalo);
    }
    else if (mouseX>1025 && mouseX<1175 && mouseY>450 && mouseY<600) {
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
  int clickCntr;
}
