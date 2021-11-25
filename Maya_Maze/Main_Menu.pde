class Main_Menu
{
  void update()
  {
    if (mouseX > 725 && mouseX < 1200 && mouseY > 550 && mouseY < 650)
    {
      image(mainMenu2,320,0);
      cursor(mouseHalo);
    }
    else
    {
      image(mainMenu, 320,0);
      cursor(ARROW);
    }
  }
}
