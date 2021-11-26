import ddf.minim.*;
import processing.video.*;

Minim minim;
AudioPlayer mainMenuMusic;
AudioPlayer mainThemeMusic;
AudioPlayer walking;
AudioPlayer mainRoomDoorOpens;
AudioPlayer finalRoomDoorOpens;

Movie Finish;
Movie doorOpening;
Movie doorOpen;

PImage mainRoom;
PImage rightRoomUnsolved;
PImage rightRoomSolved;
PImage leftRoom;
PImage finalRoom;
PImage mainMenu;
PImage mainMenu2;

PImage statueEye;
PImage statueGem;
PImage eyeIcon;
PImage eyeIconSmall;
PImage gemIcon;
PImage doorOpens;
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


String currentScene = "main_Menu";


int itemX;
int itemY = 1025;

int itemSelected;

int time = 100000000;
boolean timeSet = false;
boolean loopAnimation = false;

boolean inMainMenu = true;
boolean musicPlaying = false;

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
Main_Menu MainMenu = new Main_Menu();

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
  Gem = new GameObject(gemIcon, 935, 405, "Gem", 50, 50);
  
  minim = new Minim(this);
  mainMenuMusic = minim.loadFile("mainMenuMusic.wav");
  mainThemeMusic = minim.loadFile("jungle main theme.wav");
  walking = minim.loadFile("walking.wav");
  mainRoomDoorOpens = minim.loadFile("mainroom door opens.wav");
  finalRoomDoorOpens = minim.loadFile("finalroom door.wav");
  
  Finish = new Movie(this, "endAnimation.mov");
  doorOpening = new Movie(this, "door_opens.mov");
  doorOpen = new Movie(this, "door_opens2.mov");
  
  mainMenuMusic.play();
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
      
  MusicManager();
}

void MusicManager()
{
  if (inMainMenu == false && musicPlaying == false)
  {
    mainMenuMusic.pause();
    mainThemeMusic.loop();
    musicPlaying = true;
  }
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
  rightRoomUnsolved = loadImage("Right_Room_Unsolved.png");
  rightRoomSolved = loadImage("Right_Room_Solved.png");
  leftRoom = loadImage("Left_Room.jpg");
  finalRoom = loadImage("Final_Room.png");
  mainMenu = loadImage("mainmenu1.png");
  mainMenu2 = loadImage("mainmenu2.png");
  
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
  rightPuzzlePiece00 = loadImage("TL-0.png");
  rightPuzzlePiece01 = loadImage("TL-1.png");
  rightPuzzlePiece02 = loadImage("TL-2.png");
  rightPuzzlePiece03 = loadImage("TL-3.png");
  rightPuzzlePiece04 = loadImage("TR-0.png");
  rightPuzzlePiece05 = loadImage("TR-1.png");
  rightPuzzlePiece06 = loadImage("TR-2.png");
  rightPuzzlePiece07 = loadImage("TR-3.png");
  rightPuzzlePiece08 = loadImage("BL-0.png");
  rightPuzzlePiece09 = loadImage("BL-1.png");
  rightPuzzlePiece10 = loadImage("BL-2.png");
  rightPuzzlePiece11 = loadImage("BL-3.png");
  rightPuzzlePiece12 = loadImage("BR-0.png");
  rightPuzzlePiece13 = loadImage("BR-1.png");
  rightPuzzlePiece14 = loadImage("BR-2.png");
  rightPuzzlePiece15 = loadImage("BR-3.png");
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

void movieEvent(Movie movie)
{
  movie.read();
}
