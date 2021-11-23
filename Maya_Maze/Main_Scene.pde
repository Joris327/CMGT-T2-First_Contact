class Main_Scene 
{
  void setup()
  {
    
  }
  
  void update()
  {
    if (returnedEye == false || returnedGem == false) //displaying the returned items and ckecking whether the door is unlocked.
    {
      image(mainRoom,320,0);
      
      if (returnedEye == true)
      {
        image(statueEye,320,0);
      }
      
      if (returnedGem == true)
      {
        image(statueGem,320,0);
      }
    }
    else if (returnedEye == true && returnedGem == true)
    {
      image(doorOpens,320,0);
      doorUnlocked = true;
    }
    //rect(1160,375,75,75);
  }
  
  void mouseClicked()
  {
    if (foundEye == true && returnedEye == false
      && mouseX > 1175
      && mouseX < 1250
      && mouseY > 275
      && mouseY < 350)
    {
      returnedEye = true;
      println(itemSelected);
      
      for (Item item : Inventory)
      {
        if (item.itemName().equals("Eye"))
        {
          if (Inventory.get(itemSelected) == item)
          {
            Inventory.remove(itemSelected);
          }
        }
      }
      itemSelected = -1;
    }
    
    if (foundGem == true && returnedGem == false
      && mouseX > 1160
      && mouseX < 1235
      && mouseY > 375
      && mouseY < 450)
    {
      returnedGem = true;
      //Inventory.remove(itemSelected);
    }
      
  }
}
