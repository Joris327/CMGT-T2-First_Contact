

void SceneManager()
{
  switch(currentScene) // tells the program which scene to show.
  {
  case "main_Scene":
    mainScene.update();
    break;
  case "right_Scene":
    rightScene.update();
    break;
  case "left_Scene":
    leftScene.update();
    break;
  case "left_Puzzle":
    leftPuzzleScene.update();
    break;
  case "final_Scene":
    finalScene.update();
    break;
  case "final_Puzzle":
    finalPuzzleScene.update();
    break;
  default:
    mainScene.update();
    println("missing scene. did you make a typo?");
    break;
  }
}

void mouseReleased()
{
  if (currentScene == "final_Puzzle");
  {
    finalPuzzleScene.mouseReleased();
  }
  
}

void mouseClicked()
{
  switch(currentScene) // handles scene navigation
  {
  case "main_Scene":
    if (mouseX > 1500 && mouseY < 960)
    {
      currentScene = "right_Scene";
    }
    if (mouseX < 420 && mouseY < 960)
    {
      currentScene = "left_Scene";
    }
    if (mouseX >= 825
      && mouseX <= 1025
      && mouseY >= 375
      && mouseY <= 800
      && doorUnlocked == true)
    {
      currentScene = "final_Scene";
    }
    mainScene.mouseClicked();
    break;

  case "right_Scene":
    if (mouseX < 420 && mouseY < 960)
    {
      currentScene = "main_Scene";
    }
    break;

  case "left_Scene":
    if (mouseX > 1500)
    {
      currentScene = "main_Scene";
    }

    if (mouseX < 500 && leftPuzzleSolved == false) //when the puzzle is solved, lock the player out of the puzzle scene.
    {
      currentScene = "left_Puzzle";
    }
    break;

  case "left_Puzzle":
    if (mouseX > 1500 || leftPuzzleSolved == true) //when the puzzle is solved, lock the player out of the puzzle scene.
    {
      currentScene = "left_Scene";
    }
    break;

  case "final_Scene":
    if (mouseY > 800 && mouseY < 960)
    {
      currentScene = "main_Scene";
    }

    if (mouseX > 800 && mouseX < 1200 && mouseY > 500 && mouseY < 750)
    {
      currentScene = "final_Puzzle";
    }
    break;

  case "final_Puzzle":
    if (mouseY > 800 && mouseY < 960)
    {
      currentScene = "final_Scene";
    }
    break;

  default:
    currentScene = "main_Scene";
    println("missing scene. did you make a typo?");
    break;
  }

  switch (currentScene) // handles item click detection
  {
  case "left_Scene":
    if (mouseX > 1175 // eye clicked
      && mouseX < 1275
      && mouseY > 275
      && mouseY < 375
      && foundEye == false)
    {
      foundEye = true;
      Inventory.add(new Item(eyeIcon, itemX, itemY, "Eye"));
    }
    break;

  case "right_Scene":
    if (mouseX >= 1150 //gem clicked
      && mouseX <= 1250
      && mouseY >= 450
      && mouseY <= 550
      && foundGem == false)
    {
      foundGem = true;
      Inventory.add(new Item(gemIcon, itemX, itemY, "Gem"));
    }
    break;
  }

  for (Item item : Inventory)
  {
    item.mouseClicked();
  }
}
