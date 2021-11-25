

class leftPuzzle {
  //click counter value
  int clickCntr;
}

class Left_Puzzle
{
  void mouseClicked()
  {
    //change counter value with each click
    if (mouseX>479 && mouseX<780 && mouseY>354 && mouseY<660) {
      leftPiece.clickCntr++;
    }

    if (mouseX>799 && mouseX<1100 && mouseY>354 && mouseY<660) {
      middlePiece.clickCntr++;
    }

    if (mouseX>1119 && mouseX<1420 && mouseY>354 && mouseY<660) {
      rightPiece.clickCntr++;
    }
  }
  
  void update()
  {
    image(leftPuzzleBackground, 320, 0);
    image(leftRoomRoots, 320, 0);
    
    push();
    imageMode(CENTER);
    if (mouseX>479 && mouseX<780 && mouseY>354 && mouseY<660 && leftPuzzleSolved == false) {
      cursor(mouseHalo);
    }
    else if (mouseX>799 && mouseX<1100 && mouseY>354 && mouseY<660 && leftPuzzleSolved == false) {
      cursor(mouseHalo);
    }
    else if (mouseX>1119 && mouseX<1420 && mouseY>354 && mouseY<660 && leftPuzzleSolved == false) {
      cursor(mouseHalo);
    }
    else if ((mouseX > 1540 && mouseX < 1600) || (mouseY > 900 && mouseY < 960))
    {
      cursor(mouseHalo);
    }
    else if(mouseX > (Eye.objectX)
      && mouseX < (Eye.objectX+Eye.sizeX)
      && mouseY > (Eye.objectY)
      && mouseY < (Eye.objectY+Eye.sizeY)
      && foundEye == false)
    {
      cursor(mouseHalo);
    }
    else
    {
      cursor(ARROW);
    }
    pop();

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
    
    if (leftPuzzleSolved == false)
    {
      //change the image with each counter value increase
      if (leftPiece.clickCntr == 0) {
        image(leftPuzzlePiece0, 480, 355);
      }
      else if (leftPiece.clickCntr == 1) {
        image(leftPuzzlePiece1, 480, 355);
      }
      else if (leftPiece.clickCntr == 2) {
        image(leftPuzzlePiece2, 480, 355);
      }
      else if (leftPiece.clickCntr == 3) {
        image(leftPuzzlePiece3, 480, 355);
      }
  
  
      if (middlePiece.clickCntr == 0) {
        image(leftPuzzlePiece0, 800, 355);
      }
      else if (middlePiece.clickCntr == 1) {
        image(leftPuzzlePiece1, 800, 355);
      }
      else if (middlePiece.clickCntr == 2) {
        image(leftPuzzlePiece2, 800, 355);
      }
      else if (middlePiece.clickCntr == 3) {
        image(leftPuzzlePiece3, 800, 355);
      }
  
      if (rightPiece.clickCntr == 0) {
        image(leftPuzzlePiece0, 1120, 355);
      }
      else if (rightPiece.clickCntr == 1) {
        image(leftPuzzlePiece1, 1120, 355);
      }
      else if (rightPiece.clickCntr == 2) {
        image(leftPuzzlePiece2, 1120, 355);
      }
      else if (rightPiece.clickCntr == 3) {
        image(leftPuzzlePiece3, 1120, 355);
      }
    }
    else
    {
      if (foundEye == false)
      {
        //rect(1175,275,100,100);
        //image(eyeIconSmall,1000,900);
        Eye.update();
      }
    }
    
    

    //win condition for the puzzle
    if (leftPiece.clickCntr == 1) {
      leftSolved = true;
      //println("Left Solved");
    }
    else {
      leftSolved = false;
    }
    
    if (middlePiece.clickCntr == 0) {
      middleSolved = true;
      //println("Middle Solved");
    }
    else {
      middleSolved = false;
    }
    
    if (rightPiece.clickCntr == 3) {
      rightSolved = true;
      //println("Right Solved");
    }
    else {
      rightSolved = false;
    }
    
    if (leftSolved == true && middleSolved == true && rightSolved == true) {
      leftPuzzleSolved = true;
      //println("Left Puzzle Solved");
    }
    // solution is red left - blue down - orange right - green left
      
  }
}
