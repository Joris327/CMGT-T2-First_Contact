PImage mainRoom; 



void setup()
{
  fullScreen();
  //size(1000,1000);
  mainRoom = loadImage("Main_Hall_Background_B.png");
}

void draw()
{
  background(0);
  scale(1,1);
  image(mainRoom,320,0);
  fill(128);
  rect(320,960,1280,120);
  Quit();
}

void Quit()
{
  if (key == ESC)
  {
    exit();
  }
}
