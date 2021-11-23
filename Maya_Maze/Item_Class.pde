class Item
{
  int itemX;
  int itemY;
  PImage itemImage;
  String itemName;
  
  Item (PImage pImage, int pItemX, int pItemY, String pItemName)
  {
    itemImage = pImage;
    itemX = pItemX;
    itemY = pItemY;
    itemName = pItemName;
  }
  
  void draw()
  {
    image(itemImage,itemX,itemY, 150, 150);
  }
  
  String itemName()
  {
    return itemName;
  }
}
