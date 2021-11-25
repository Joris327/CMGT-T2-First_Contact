class Item //gameobject are items that are in the scenes and items are inside the inventory
{
  int itemX;
  int itemY;
  PImage itemImage;
  String itemName;
  int sizeX;
  int sizeY;
  
  boolean itemSelected = false;
  
  Item (PImage pImage, int pItemX, int pItemY, String pItemName, int pSizeX, int pSizeY)
  {
    itemImage = pImage;
    itemX = pItemX;
    itemY = pItemY;
    itemName = pItemName;
    sizeX = pSizeX;
    sizeY = pSizeY;
  }
  
  void draw()
  {
    if (itemSelected == true)
    {
      fill(#FAD7AC);
      rect(itemX-75,itemY-50,150,95);
    }
    
    image(itemImage,itemX,itemY, sizeX, sizeY);
    
    //if (mouseX < itemX+75
    //  && mouseX > itemX-75
    //  && mouseY < itemY+25
    //  && mouseY > itemY-50)
    //  {
    //    cursor(mouseHalo);
    //  }
    //  else
    //  {
    //    cursor(ARROW);
    //  }
  }
  
  void mouseClicked()
  {
    if (mouseX < itemX+75
      && mouseX > itemX-75
      && mouseY < itemY+25
      && mouseY > itemY-50)
      {
        itemSelected = true;
      }
      else
      {
        itemSelected = false;
      }
  }
  
  String itemName()
  {
    return itemName;
  }
}
