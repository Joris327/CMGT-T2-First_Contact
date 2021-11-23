//class Door_Opens_Anim
//{
//  PImage[] images;
//  int current = 0;
  
//  Door_Opens_Anim (PImage pSourceImage, int columns, int rows)
//  {
//    images = new PImage[rows*columns];
    
//    int imageWidth = (int)(pSourceImage.width/(float)columns);
//    int imageHeight = (int)(pSourceImage.height/(float)rows);
    
//    for (int y = 0; y < rows; y++) {
//      for (int x = 0; x < columns; x++) {
//        PImage sprite = createImage (imageWidth, imageHeight, ARGB);
//        sprite.copy(
//          pSourceImage, 
//          x * imageWidth, 
//          y * imageHeight,
//          imageWidth, 
//          imageHeight,
//          0, 0, imageWidth, imageHeight
//         );
//        images[x + y * columns] = sprite;
//      }
//    }
//  }
  
//  void draw(int x, int y)
//  {
//    push();
//    imageMode(CENTER);
//    image(images[current], x, y);
//    pop();
//  }
  
//  void next()
//  {
//    current = (current+1) % images.length;
//  }
//}
