class Item
{
  int itemX;
  int itemY;
  PImage itemImage;
  
  Item (PImage pImage, int pItemX, int pItemY)
  {
    itemImage = pImage;
    itemX = pItemX;
    itemY = pItemY;
  }
  
  void draw()
  {
    image(itemImage,itemX,itemY);
  }
}
