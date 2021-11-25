class Left_Scene
{
  void update()
  {
    image(leftRoom,320,0);
    
    if (foundEye == false)
    {
      //rect(1175,275,100,100);
      //image(eyeIconSmall,1000,900);
      Eye.update();
    }
    
    // change mouse when hovering over something clickable
    push();
    imageMode(CENTER);
    if (mouseX > 1500 && mouseX < 1600 && mouseY < 960 && mouseY > 400) //right door
    {
      cursor(mouseHalo);
    }
    else if (mouseX > 320 && mouseX < 420 && mouseY > 250 && mouseY < 300)
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
