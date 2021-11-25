class Right_Scene
{
  void update()
  {
    image(rightRoom,320,0);
    
    if (foundGem == false)
    {
      //image(statueGem,320,0);
      Gem.update();
    }
    
    push();
    imageMode(CENTER);
    if (mouseX < 420 && mouseX > 320 && mouseY < 960 && mouseY > 400) //left door
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
