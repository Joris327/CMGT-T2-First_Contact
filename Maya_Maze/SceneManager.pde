

void SceneManager()
{
  switch(currentScene)
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
  if (currentScene == 1 && mouseX >= 1500)
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
}
