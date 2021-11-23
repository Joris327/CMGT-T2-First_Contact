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
    
    /*
    if (returnedEye == true)
    {
      image(statueEye,320,0);
    }
    
    if (returnedGem == true)
    {
      image(statueGem,320,0);
    }
    
    if (returnedEye == true && returnedGem == true)
    {
      image(doorOpens,320,0);
    }
    */
  }
}
