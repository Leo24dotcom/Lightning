int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup(){
  size(500,500);
  strokeWeight(7);
  background(255,255,255);
  frameRate(60);
}

void draw(){ 
    noStroke();
    rect(0,0,100,500);
    endX = startX + (int)(Math.random()*9);
    endY = startY + (int)(Math.random()*18)-7;
    stroke(240,245,12);
    Bolt(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    noStroke();
    fill(0,0,0);
    ellipse(400,300,200,200);
    fill(146,147,113);
    rect(350,390,100,100);
    if(endX > 500 || endY > 500)
    {
     background(255,255,255);
     startX = 0;
     startY = (int)(Math.random()*500);
     endX = 0;
     endY = 150;
    }
    if(endX >= 320 && endY >= 250){
      fill(240,245,12);
      ellipse(400,300,200,200);  
      fill(255,0,0);
      ellipse(400,340,60,60);
      fill(0,255,0);
      ellipse(340,280,40,40);
      fill(0,255,0);
      ellipse(420,280,40,40);
      fill(255,255,255);
      rect(390,350,20,20);
      fill(0,0,255);
    }
  }
void Bolt(int startX,int startY,int endX,int endY){
  line(startX,startY,endX,endY);
}

void mousePressed()
{
  startX = 0;
  startY = (int)(Math.random()*500);
  endX = 0;
  endY = 150;
}
