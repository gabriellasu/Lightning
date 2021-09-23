int startX = 350;
int startY = 150;
int endX = 0;
int endY = 250;
void setup()
{
  size(500,500);
  background(#B1CFF0);
  strokeWeight(10);
  stroke(#7C7A75);
  fill(#000000);
  rect(30,25,440,300);
  rect(200,300,100,100);
  fill(#AA8843);
  rect(0,400,500,100);
}


void draw()
{
  noStroke();
  fill(#eeeeee);
  ellipse(350,150,50,50);
  double crack = Math.random();
if (crack >= 0.5){
  while (endX < 465 && endY > 30 && endY < 320){
    endX = startX + (int)(Math.random() * 9) + 1;
    endY = startY + (int)(Math.random() * 25) - 12;
    strokeWeight(2);
    stroke( (int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256) );
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}  else if (crack < 0.5){
    while (endX > 30 && endY > 30 && endY < 320){
    endX = startX - (int)(Math.random() * 9) + 1;
    endY = startY + (int)(Math.random() * 25) - 12;
    strokeWeight(3);
    stroke( (int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256) );
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
   }
}
}

void mousePressed()
{
 startX = 350;
 startY = 150;
 endX = 0;
 endY = 250;
}
