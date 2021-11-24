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
    int deleteItem = -1;
    
    if (foundEye == true && returnedEye == false
      && mouseX > 1175
      && mouseX < 1250
      && mouseY > 275
      && mouseY < 350)
    {
      Item eyeItem = null;
      
      
      for (int i = 0; i < Inventory.size(); ++i)
      {
        Item item = Inventory.get(i);
        if (item.itemName().equals("Eye") && item.itemSelected == true)
        {
          returnedEye = true;
          eyeItem = item;
          deleteItem = i;
        }
      }
      
      if (eyeItem != null)
      {
        if (returnedEye == true && eyeItem.itemName().equals("Eye"))
        {
          Inventory.remove(deleteItem);
          deleteItem = -1;
        }
      }
    }
    
    if (foundGem == true && returnedGem == false
      && mouseX > 1160
      && mouseX < 1235
      && mouseY > 475
      && mouseY < 550)
    {
      Item gemItem = null;
      
      for (int i = 0; i < Inventory.size(); ++i)
      {
        Item item = Inventory.get(i);
        if (item.itemName().equals("Gem") && item.itemSelected == true)
        {
          returnedGem = true;
          gemItem = item;
          deleteItem = i;
        }
      }
      
      if (gemItem != null)
      {
        if (returnedGem == true && gemItem.itemName().equals("Gem"))
        {
          Inventory.remove(deleteItem);
          deleteItem = -1;
        }
      }
    }
  }
}
