/*void mouseClicked(){
 if(knifeSelected == true){
 >>switch scene to puzzle?
 }
 }*/

class Left_Scene
{
  void update()
  {
    image(leftRoom, 320, 0);

    if (foundEye == false)
    {
      //rect(1175,275,100,100);
      image(statueEye, 320, 0);
    }

    //  if (leftPuzzleSolved == true)
    //{
    //  draw relic somewhere on the background
    //}
  }
}
