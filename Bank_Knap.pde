class Knap{

  boolean knapTrykket;
  float positionX;
  float positionY;
  float hojde;
  float bredde;
  String tekst;
  
  Knap(float a, float b, float c, float d, String e){
  positionX = a;
  positionY = b;
  bredde = c;
  hojde = d;
  tekst = e;
  }
  
   void tegnKnap() {
    tekstPosX = positionX +20;
    tekstPosY = positionY +30;
    textSize(20);
    rect(positionX, positionY, bredde, hojde);
    fill(255, 255, 255);
    text(tekst, tekstPosX, tekstPosY);
   }
  
  void registrerKlik(){
      if ((mouseX>=positionX)&&(mouseX<=positionX+bredde)&&(mouseY>=positionY)&&(mouseY<=positionY+hojde)&&(mousePressed==true)) {
       knapTrykket = true;
        } else {
          knapTrykket = false;
      }
  
  }
}
