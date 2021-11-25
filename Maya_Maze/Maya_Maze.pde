PImage mainRoom;
PImage rightRoom;
PImage leftRoom;
PImage finalRoom;
PImage statueEye;
PImage statueGem;
PImage eyeIcon;
PImage eyeIconSmall;
PImage gemIcon;
PImage doorOpens;
//PImage doorOpensAnim;
PImage mouseHalo;

//images for the left room puzzle
PImage leftPuzzleBackground;
PImage leftRoomRoots;
PImage leftPuzzlePiece0;
PImage leftPuzzlePiece1;
PImage leftPuzzlePiece2;
PImage leftPuzzlePiece3;

//images for the right room puzzle
PImage rightPuzzlePiece00;
PImage rightPuzzlePiece01;
PImage rightPuzzlePiece02;
PImage rightPuzzlePiece03;

PImage rightPuzzlePiece04;
PImage rightPuzzlePiece05;
PImage rightPuzzlePiece06;
PImage rightPuzzlePiece07;

PImage rightPuzzlePiece08;
PImage rightPuzzlePiece09;
PImage rightPuzzlePiece10;
PImage rightPuzzlePiece11;

PImage rightPuzzlePiece12;
PImage rightPuzzlePiece13;
PImage rightPuzzlePiece14;
PImage rightPuzzlePiece15;


String currentScene = "main_Scene";


int itemX;
int itemY = 1025;

int itemSelected;

boolean foundEye = false;
boolean returnedEye = false;

boolean foundGem = false;
boolean returnedGem = false;

boolean doorUnlocked = false;

//booleans for left room puzzle
boolean leftSolved = false;
boolean middleSolved = false;
boolean rightSolved = false;

boolean topRightSolved = false;
boolean topLeftSolved = false;
boolean bottomRightSolved = false;
boolean bottomLeftSolved = false;

boolean rightPuzzleSolved = false;
boolean leftPuzzleSolved = false;

Main_Scene mainScene = new Main_Scene();
Right_Scene rightScene = new Right_Scene();
Left_Scene leftScene = new Left_Scene();
Final_Scene finalScene = new Final_Scene();
//Door_Opens_Anim DoorOpensAnim = new Door_Opens_Anim(doorOpensAnim, 11, 1);

Left_Puzzle leftPuzzleScene = new Left_Puzzle();

leftPuzzle leftPiece = new leftPuzzle();
leftPuzzle middlePiece = new leftPuzzle();
leftPuzzle rightPiece = new leftPuzzle();

rightPuzzle trPiece = new rightPuzzle();
rightPuzzle tlPiece = new rightPuzzle();
rightPuzzle brPiece = new rightPuzzle();
rightPuzzle blPiece = new rightPuzzle();

GameObject Eye;
GameObject Gem;

ArrayList<Item> Inventory = new ArrayList();

void setup()
{
  fullScreen(); 
  //1080p screens only!!! higher resolusion will work but is wonky.
  //lower resolution will make game unplayable.

  LoadImages();
  Eye = new GameObject(eyeIcon, 800, 400, "Eye", 300, 300);
  Gem = new GameObject(gemIcon, 937, 440, "Gem", 50, 50);
}

void draw()
{
  background(0);
  
  QuitOnEscPress();
  
  imageMode(CORNER);
  SceneManager();
  
  imageMode(CENTER);
  DrawInventory();
  
  //if (doorUnlocked = true)
  //{
  //  DoorOpensAnim.next();
  //  DoorOpensAnim.draw(320, 0);
  //}
      
}

void DrawInventory()
{
  fill(128);
  rect(320, 960, 1280, 120); //inventory bar
  
  itemX = 425;
  
  for (int i = 0; i < Inventory.size(); ++i) // draw every item in inventory
  {
    Item item = Inventory.get(i);
    
    if (item != null)
    {
      item.itemX = itemX;
      item.draw();
      itemX += 200;
    }
    else
    {
      itemX -= 200;
    }
  }
}

Item itemName (String name)
  {
    for (Item item : Inventory)
    {
      if (item.itemName().equals(name))
      {
        return item;
      }
    }
    return null;
  }

void LoadImages()
{
  mainRoom = loadImage("Main_Room.png");
  rightRoom = loadImage("Right_Room.png");
  leftRoom = loadImage("Left_Room.jpg");
  finalRoom = loadImage("Final_Room.png");
  statueEye = loadImage("Statue_Eye.png");
  statueGem = loadImage("Statue_Gem.png");
  eyeIcon = loadImage("eye300x300.png");
  eyeIconSmall = loadImage("eye30x30.png");
  gemIcon = loadImage("Gem300x300.png");
  doorOpens = loadImage("Door_Open.gif");
  //doorOpensAnim = loadImage("Door_Opens_Anim.png");
  mouseHalo = loadImage("halo.png");
  
  //images for left room puzzle
  leftPuzzleBackground = loadImage("Left_Puzzle.jpg");
  leftRoomRoots = loadImage("Left_Room_Roots.png");
  leftPuzzlePiece0 = loadImage("piece0.png");
  leftPuzzlePiece1 = loadImage("piece1.png");
  leftPuzzlePiece2 = loadImage("piece2.png");
  leftPuzzlePiece3 = loadImage("piece3.png");
  
  // images for the right room puzzle
  rightPuzzlePiece00 = loadImage("arrow0.png");
  rightPuzzlePiece01 = loadImage("arrow1.png");
  rightPuzzlePiece02 = loadImage("arrow2.png");
  rightPuzzlePiece03 = loadImage("arrow3.png");
  rightPuzzlePiece04 = loadImage("arrow4.png");
  rightPuzzlePiece05 = loadImage("arrow5.png");
  rightPuzzlePiece06 = loadImage("arrow6.png");
  rightPuzzlePiece07 = loadImage("arrow7.png");
  rightPuzzlePiece08 = loadImage("arrow8.png");
  rightPuzzlePiece09 = loadImage("arrow9.png");
  rightPuzzlePiece10 = loadImage("arrow10.png");
  rightPuzzlePiece11 = loadImage("arrow11.png");
  rightPuzzlePiece12 = loadImage("arrow12.png");
  rightPuzzlePiece13 = loadImage("arrow13.png");
  rightPuzzlePiece14 = loadImage("arrow14.png");
  rightPuzzlePiece15 = loadImage("arrow15.png");
}

void QuitOnEscPress()
{
  if (key == ESC)
  {
    exit();
  }
}

void keyReleased() // cheat to get to the final room quickly by pressing r and t
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
