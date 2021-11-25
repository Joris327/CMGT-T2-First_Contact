class Item
{
  int itemX;
  int itemY;
  PImage itemImage;
  String itemName;
  
  boolean itemSelected = false;
  
  Item (PImage pImage, int pItemX, int pItemY, String pItemName)
  {
    itemImage = pImage;
    itemX = pItemX;
    itemY = pItemY;
    itemName = pItemName;
  }
  
  void draw()
  {
    if (itemSelected == true)
    {
      fill(#FAD7AC);
      rect(itemX-75,itemY-50,150,90);
    }
    
    image(itemImage,itemX,itemY, 100, 100);
    
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
