PImage mainRoom; 
PImage rightRoom;
PImage leftRoom;
PImage finalRoom;
PImage statueEye;
PImage statueGem;
PImage doorOpens;
PImage doorOpensAnim;

String currentScene = "main_Scene";


int itemX = -500;
int itemY = 700;

boolean foundEye = false;
boolean returnedEye = false;

boolean foundGem = false;
boolean returnedGem = false;

boolean doorUnlocked = false;


Main_Scene mainScene = new Main_Scene();
Right_Scene rightScene = new Right_Scene();
Left_Scene leftScene = new Left_Scene();
Left_Puzzle leftPuzzleScene = new Left_Puzzle();
Final_Scene finalScene = new Final_Scene();
//Enums scenes = new Enums();
//Item item = new Item();
//Door_Opens_Anim DoorOpensAnim = new Door_Opens_Anim(doorOpensAnim, 11, 1);

//Scenes currentScene = Scenes.main_Scene;

ArrayList<Item> Inventory = new ArrayList();

void setup()
{
  fullScreen(); 
  //1080p screens only!!! higher resolusion will work but is wonky.
  //lower resolution will make game unplayable.

  LoadImages();
  
      //starting values click counter for left puzzle
    leftPiece.clickCntr = 0;
    middlePiece.clickCntr = 0;
    rightPiece.clickCntr = 0;
}

void draw()
{
  background(0);

  SceneManager();
  
  DrawInventory();
  
  QuitOnEscPress();
  
  //if (doorUnlocked = true)
  //{
  //  DoorOpensAnim.next();
  //  DoorOpensAnim.draw(320, 0);
  //}
      
}



void LoadImages()
{
  mainRoom = loadImage("Main_Hall.png");
  rightRoom = loadImage("Right_Room_Scetch.jpg");
  leftRoom = loadImage("Left_Room.jpg");
  leftPuzzleRoom = loadImage("Left_Puzzle.jpg");
  finalRoom = loadImage("leftroomcloseuproots.png");
  statueEye = loadImage("Statue_Eye.png");
  statueGem = loadImage("Statue_Gem.png");
  doorOpens = loadImage("door_opens.gif");
  doorOpensAnim = loadImage("Door_Opens_Anim.png");
  leftPuzzlePiece0 = loadImage("piece0.png");
  leftPuzzlePiece1 = loadImage("piece1.png");
  leftPuzzlePiece2 = loadImage("piece2.png");
  leftPuzzlePiece3 = loadImage("piece3.png");
  
}

void DrawInventory()
{
  fill(128);
  rect(320, 960, 1280, 120); //inventory bar
  
  //for (int i = 0; i < Inventory.size(); ++i)
  //{
  //  Item.draw();
  //  itemY = 500 + (i * 100);
  //}
  
  //for (Item item : Inventory)
  //{
  //  item.draw();
  //  itemX = -500 + (getIndex(item) * 100);
  //}
}

void QuitOnEscPress()
{
  if (key == ESC)
  {
    exit();
  }
}

void keyReleased()
{
  if (key == 'r' && returnedEye == false)
  {
    returnedEye = true;
  } 
  else if (key == 'r')
  {
    returnedEye = false;
  }
  
  if (key == 't' && returnedGem == false)
  {
    returnedGem = true;
  } 
  else if (key == 't')
  {
    returnedGem = false;
  }
}
