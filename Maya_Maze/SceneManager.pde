

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
      if (mouseX > 1500)
      {
        currentScene = "right_Scene";
      }
      if (mouseX < 420)
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
    break;
      
    case "right_Scene":
      if (mouseX < 420)
      {
        currentScene = "main_Scene";
      }
    break;
      
    case "left_Scene":
      if (mouseX > 1500)
      {
        currentScene = "main_Scene";
      }
    break;
      
    case "final_Scene":
      if (mouseY > 800 && mouseY < 960)
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
      if (mouseX > 1175 // eye clicked
        && mouseX < 1275
        && mouseY > 275
        && mouseY < 375)
      {
        foundEye = true;
        returnedEye = true;
      }
    break;
    
    case "right_Scene":
      if (mouseX >= 1150 //gem clicked
        && mouseX <= 1250
        && mouseY >= 450
        && mouseY <= 550)
      {
        foundGem = true;
        returnedGem = true;
      }
    break;
  }
  
  /*
  if (currentScene == 1 && mouseX >= 1500)// logic for going to diffrent scenes
  {
    currentScene = 2;
  }
  else if (currentScene == 2 && mouseX <= 420)
  {
    currentScene = 1;
  }
  else if (currentScene == 1 && mouseX <= 420)
  {
    currentScene = 3;
  }
  else if (currentScene == 3 && mouseX >= 1500)
  {
    currentScene = 1;
  }
  else if (currentScene == 1 
    && mouseX >= 825 
    && mouseX <= 1025 
    && mouseY >= 375 
    && mouseY <= 800
    && doorUnlocked == true)
  {
    currentScene = 4;
  }
  else if (currentScene == 4 
    && mouseY >= 800 
    && mouseY <= 960)
  {
    currentScene = 1;
  }
  */
  
  /*
  if (currentScene == 3 //clicking the eye
    && mouseX >= 1175
    && mouseX <= 1275
    && mouseY >= 275
    && mouseY <= 375)
    {
      foundEye = true;
      returnedEye = true;
    }
    
  if (currentScene == 2 //clicking the gem
    && mouseX >= 1150
    && mouseX <= 1250
    && mouseY >= 450
    && mouseY <= 550)
  {
    foundGem = true;
    returnedGem = true;
  }
  */
}
