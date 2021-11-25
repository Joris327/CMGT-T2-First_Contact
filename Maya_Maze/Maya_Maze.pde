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
PImage leftPuzzlePiece0;
PImage leftPuzzlePiece1;
PImage leftPuzzlePiece2;
PImage leftPuzzlePiece3;

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

GameObject Eye;
GameObject Gem;

ArrayList<Item> Inventory = new ArrayList();

void setup()
{
  fullScreen(); 
  //1080p screens only!!! higher resolusion will work but is wonky.
  //lower resolution will make game unplayable.

  LoadImages();
  Eye = new GameObject(eyeIcon, 1000, 900, "Eye", 30, 30);
  Gem = new GameObject(gemIcon, 900, 400, "Gem", 30, 34);
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
  gemIcon = loadImage("Gem_Placeholder.png");
  doorOpens = loadImage("Door_Open.gif");
  //doorOpensAnim = loadImage("Door_Opens_Anim.png");
  mouseHalo = loadImage("halo.png");
  
  //images for left room puzzle
  leftPuzzleBackground = loadImage("Left_Puzzle.jpg");
  leftPuzzlePiece0 = loadImage("piece0.png");
  leftPuzzlePiece1 = loadImage("piece1.png");
  leftPuzzlePiece2 = loadImage("piece2.png");
  leftPuzzlePiece3 = loadImage("piece3.png");
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
