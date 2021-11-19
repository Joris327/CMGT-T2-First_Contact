

void SceneManager()
{
  switch(currentScene) // tells the program which scene to show.
  {
    case 1: 
      mainScene.update();
      break;
    case 2:  
      rightScene.update();
      break;
    case 3: 
      leftScene.update();
      break;
    case 4:
      finalScene.update();
      break;
    default:
      mainScene.update();
      println("missing scene. has the scene been added to the scene manager?");
      break;
  }
}

void mouseClicked() 
{
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
}
