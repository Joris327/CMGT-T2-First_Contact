

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
    case "left_Scene_Puzzle":
      leftPuzzleScene.update();
      break;
    case "final_Scene":
      finalScene.update();
      break;
    case "main_Menu":
      MainMenu.update();
      break;
    default:
      mainScene.update();
      println("missing scene. did you make a typo?");
      break;
  }
}

void mouseClicked() 
{
  switch(currentScene) // handles scene navigation
  {
    case "main_Scene":
      if (mouseX > 1500 && mouseX < 1600 && mouseY < 960 && mouseY > 400)
      {
        currentScene = "right_Scene";
        walking.play();
         walking.rewind();
      }
      if (mouseX < 420 && mouseX > 320 && mouseY < 960 && mouseY > 400)
      {
        currentScene = "left_Scene";
        walking.play();
         walking.rewind();
      }
      if (mouseX > 825 && mouseX < 1025 && mouseY > 375 && mouseY < 725 && doorUnlocked == true)
      {
        currentScene = "final_Scene"; 
        walking.play();
         walking.rewind();
      }
      mainScene.mouseClicked();
      inMainMenu = false;
    break;
      
    case "right_Scene":
    rightScene.mouseClicked();
      if (mouseX < 420 && mouseX < 1320 && mouseY < 960 && mouseY > 400)
      {
        currentScene = "main_Scene";
        walking.play();
         walking.rewind();
      }
    break;
      
    case "left_Scene":
      if (mouseX > 1500 && mouseX < 1600 && mouseY < 960 && mouseY > 400)
      {
        currentScene = "main_Scene";
        walking.play();
         walking.rewind();
      }
      
      if (mouseX > 320 && mouseX < 420 && mouseY > 250 && mouseY < 300)
      {
        currentScene = "left_Scene_Puzzle";
        walking.play();
        walking.rewind();
      }
    break;
    
    case "left_Scene_Puzzle":
      leftPuzzleScene.mouseClicked();
      if ((mouseX > 1540 && mouseX < 1600) || (mouseY > 900 && mouseY < 960))
      {
        currentScene = "left_Scene";
        walking.play();
        walking.rewind();
      }
    break;
      
    case "final_Scene":
      if (mouseX > 320 && mouseX < 1600 && mouseY < 960 && mouseY > 900)
      {
        currentScene = "main_Scene";
        walking.play();
        walking.rewind();
      }
    break;
    
    case "main_Menu":
      if (mouseX > 725 && mouseX < 1200 && mouseY > 550 && mouseY < 650)
    {
      inMainMenu = false;
      currentScene = "main_Scene";
      walking.play();
      walking.rewind();
    }
    break;
    
    default:
      currentScene = "main_Scene";
      println("missing scene. did you make a typo?");
      break;
  }
  
  switch (currentScene) // handles item click detection
  {
    case "left_Scene_Puzzle":
      if (foundEye == false && leftPuzzleSolved == true)
      {
        Eye.onObjectClick();
      }
    break;
    
    case "right_Scene":
      if (foundGem == false && rightPuzzleSolved == true)
      {
        Gem.onObjectClick();
      }
    break;
  }
  
  for (Item item : Inventory)
  {
    item.mouseClicked();
  }
}
