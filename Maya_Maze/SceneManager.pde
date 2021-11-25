

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
    case "final_Scene":
      finalScene.update();
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
      }
      if (mouseX < 420 && mouseX > 320 && mouseY < 960 && mouseY > 400)
      {
        currentScene = "left_Scene";
      }
      if (mouseX > 825 && mouseX < 1025 && mouseY > 375 && mouseY < 725 && doorUnlocked == true)
      {
        currentScene = "final_Scene";   
      }
      mainScene.mouseClicked();
    break;
      
    case "right_Scene":
      if (mouseX < 420 && mouseX < 1320 && mouseY < 960 && mouseY > 400)
      {
        currentScene = "main_Scene";
      }
    break;
      
    case "left_Scene":
      if (mouseX > 1500 && mouseX < 1600 && mouseY < 960 && mouseY > 400)
      {
        currentScene = "main_Scene";
      }
    break;
      
    case "final_Scene":
      if (mouseX > 320 && mouseX < 1600 && mouseY < 960 && mouseY > 900)
      {
        currentScene = "main_Scene";
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
      if (foundEye == false)
      {
        Eye.onObjectClick();
      }
      
      //if (mouseX > 1000 // eye clicked
      //  && mouseX < 1020
      //  && mouseY > 900
      //  && mouseY < 920
      //  && foundEye == false && Eye.itemClicked == true)
      //{
      //  foundEye = true;
      //  Inventory.add(new Item(eyeIcon, itemX, itemY, "Eye"));
      //}
    break;
    
    case "right_Scene":
      if (foundGem == false)
      {
        Gem.onObjectClick();
      }
      //if (mouseX >= 1150 //gem clicked
      //  && mouseX <= 1250
      //  && mouseY >= 450
      //  && mouseY <= 550
      //  && foundGem == false)
      //{
      //  foundGem = true;
      //  Inventory.add(new Item(gemIcon, itemX, itemY, "Gem"));
      //}
    break;
  }
  
  for (Item item : Inventory)
  {
    item.mouseClicked();
  }
}
