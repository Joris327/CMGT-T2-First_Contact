class Final_Scene
{
  void update()
  {
    image(finalRoom,320,0);
    
  push();
  imageMode(CENTER);
  if(mouseX > 320 && mouseX < 1600 && mouseY < 960 && mouseY > 900)
  {
    cursor(mouseHalo);
  }
  else
  {
    cursor(ARROW);
  }
  pop();
  }
}
