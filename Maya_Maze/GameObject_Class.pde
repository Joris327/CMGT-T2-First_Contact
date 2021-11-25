class GameObject //gameobject are items that are in the scenes and items are inside the inventory
{
  PImage objectImage;
  int objectX;
  int objectY;
  String objectName;
  int sizeX;
  int sizeY;
  
  GameObject (PImage pImage, int pObjectX, int pObjectY, String pObjectName, int pSizeX, int pSizeY)
  {
    objectImage = pImage;
    objectX = pObjectX;
    objectY = pObjectY;
    objectName = pObjectName;
    sizeX = pSizeX;
    sizeY = pSizeY;
  }
  
  void update()
  {
    image(objectImage, objectX, objectY, sizeX, sizeY);
  }
  
  void onObjectClick()
  {
    if(mouseX > objectX
      && mouseX < (objectX+sizeX)
      && mouseY > objectY
      && mouseY < (objectY+sizeY))
    {
      if (objectName == "Eye")
      {
        Inventory.add(new Item(eyeIcon, itemX, itemY, objectName, 100, 100));
        foundEye = true;
      }
      else if (objectName == "Gem")
      {
        Inventory.add(new Item(gemIcon, itemX, itemY, objectName, 80, 80));
        foundGem = true;
      }
    }
  }
}
