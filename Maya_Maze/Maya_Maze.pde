PImage mainRoom;
PImage rightRoom;
PImage leftRoom;
PImage finalRoom;
PImage statueEye;
PImage statueGem;
PImage eyeIcon;
PImage gemIcon;
PImage doorOpens;
//PImage doorOpensAnim;

String currentScene = "main_Scene";


int itemX;
int itemY = 1025;

boolean foundEye = false;
boolean returnedEye = false;

boolean foundGem = false;
boolean returnedGem = false;

boolean doorUnlocked = false;

int itemSelected;

Main_Scene mainScene = new Main_Scene();
Right_Scene rightScene = new Right_Scene();
Left_Scene leftScene = new Left_Scene();
Left_Puzzle leftPuzzleScene = new Left_Puzzle();
Final_Scene finalScene = new Final_Scene();
Final_Puzzle finalPuzzleScene = new Final_Puzzle();
//Door_Opens_Anim DoorOpensAnim = new Door_Opens_Anim(doorOpensAnim, 11, 1);

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

  trPiece.clickCntr = 0;
  tlPiece.clickCntr = 0;
  brPiece.clickCntr = 0;
  blPiece.clickCntr = 0;
  
  
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
    } else
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
  gemIcon = loadImage("eye30x30.png");
  doorOpens = loadImage("Door_Open.gif");
  leftPuzzlePiece0 = loadImage("piece0.png");
  leftPuzzlePiece1 = loadImage("piece1.png");
  leftPuzzlePiece2 = loadImage("piece2.png");
  leftPuzzlePiece3 = loadImage("piece3.png");
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
  skullPuzzle = loadImage("skull_puzzle.png");
  skull1 = loadImage("puzzlepc1.png");
  skull2 = loadImage("puzzlepc2.png");
  skull3 = loadImage("puzzlepc3.png");
  skull4 = loadImage("puzzlepc4.png");
  skull5 = loadImage("puzzlepc5.png");
  skull6 = loadImage("puzzlepc6.png");
  

  //doorOpensAnim = loadImage("Door_Opens_Anim.png");
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
  } else if (key == 'r')
  {
    returnedEye = false;
  }

  if (key == 't' && returnedGem == false)
  {
    returnedGem = true;
  } else if (key == 't')
  {
    returnedGem = false;
  }
}
