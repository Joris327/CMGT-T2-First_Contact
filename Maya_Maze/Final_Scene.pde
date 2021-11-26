class Final_Scene
{
  void update()
  {
    if (key == 'f')
    {
      Finish.play();
      image(Finish,320,0);
      finalRoomDoorOpens.play();
    }
    else
    {
      image(finalRoom,320,0);
    }
    
    
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
