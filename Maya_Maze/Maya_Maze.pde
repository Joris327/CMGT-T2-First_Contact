PImage mainRoom; 
PImage rightRoom;
PImage leftRoom;
PImage finalRoom;
PImage statueEye;
PImage statueGem;
PImage doorOpens;

int currentScene = 1;

boolean returnedEye = false;
boolean returnedGem = false;
boolean doorUnlocked = false;

Main_Scene mainScene = new Main_Scene();
Right_Scene rightScene = new Right_Scene();
Left_Scene leftScene = new Left_Scene();
Final_Scene finalScene = new Final_Scene();

void setup()
{
  fullScreen(); 
  //1080p screens only!!! higher resolusion will work but is wonky.
  //lower resolution will make game unplayable.

  LoadImages();
}

void draw()
{
  background(0);

  SceneManager(); //handles scene navigation.
  
  fill(128);
  rect(320, 960, 1280, 120); //inventory bar
  
  QuitOnEscPress();
}

void keyReleased()
{
  if (key == 'r' && returnedEye == false)
  {
    returnedEye = true;
  } 
  else if (key == 'r' &&returnedEye == true)
  {
    returnedEye = false;
  }
  
  if (key == 't' && returnedGem == false)
  {
    returnedGem = true;
  } 
  else if (key == 't' && returnedGem == true)
  {
    returnedGem = false;
  }
}

void LoadImages()
{
  mainRoom = loadImage("Main_Hall.png");
  rightRoom = loadImage("Right_Room_Scetch.jpg");
  leftRoom = loadImage("Left_Room_Placeholder.jpg");
  finalRoom = loadImage("leftroomcloseuproots.png");
  statueEye = loadImage("Statue_Eye.png");
  statueGem = loadImage("Statue_Gem.png");
  doorOpens = loadImage("door_opens.gif");
}

void QuitOnEscPress()
{
  if (key == ESC)
  {
    exit();
  }
}
