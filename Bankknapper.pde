float bankKonto1;
float bankKonto2;
Knap knap1 = new Knap(100, 100, 100, 50, "+100kr");
Knap knap2 = new Knap(250, 200, 100, 50, "-100kr");
Knap knap3 = new Knap(250, 100, 100, 50, "+100kr");
Knap knap4 = new Knap(100, 200, 100, 50, "-100kr");
void setup() {
  size(500, 500);
}
void draw() {
  clear();
  fill(0, 100, 0);
  knap1.tegnKnap();
  fill(100, 0, 0);
  knap2.tegnKnap();
  fill(0, 100, 0);
  knap3.tegnKnap();
  fill(100, 0, 0);
  knap4.tegnKnap();
  
  knap1.registrerKlik();
  knap2.registrerKlik();
  knap3.registrerKlik();
  knap4.registrerKlik();


  fill(255, 255, 255);
  text("Konto #1", 100, 350);
  fill(255, 255, 255);
  rect(100, 400, 100, 50);
  fill(255, 255, 255);
  text("Konto #2", 250, 350);
  fill(255, 255, 255);
  rect(250, 400, 100, 50);
  fill(0, 0, 0);
  text(bankKonto1+"kr", 120, 430);
  text(bankKonto2+"kr", 270, 430);
}
void mouseClicked() {
  if (knap1.registrerKlik) {
    bankKonto1 +=100;
  } 
  if (knap2.registrerKlik) {
    bankKonto2 -=100;
  } 
  if (knap3.registrerKlik) {
    bankKonto2 +=100;
  } 
  if (knap4.registrerKlik) {
    bankKonto1 -=100;
  }
}
