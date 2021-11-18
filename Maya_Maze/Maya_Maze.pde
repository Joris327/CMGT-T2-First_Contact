PImage mainRoom; 
PImage rightRoom;
PImage leftRoom;
PImage finalRoom;

int currentScene = 1;

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
  
  SceneManager();
  
  fill(128);
  rect(320,960,1280,120);
  CheckIfQuit();
}

void LoadImages()
{
  mainRoom = loadImage("Main_Hall_Background_B.png");
  rightRoom = loadImage("Right_Room_Scetch.jpg");
  leftRoom = loadImage("Left_Room_Placeholder.jpg");
  finalRoom = loadImage("leftroomcloseuproots.png");
}

void CheckIfQuit()
{
  if (key == ESC)
  {
    exit();
  }
}
