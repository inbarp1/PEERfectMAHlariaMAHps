
PImage img;
Key win;
int circleX,circleY;
int CircleSize=70;
int rect1X, rect1Y, rect2X, rect2Y, rect3X, rect3Y,rect4X, rect4Y,rect5X, rect5Y;   
int rectSize = 70; 
boolean rect1Over = false;
boolean rect2Over = false;
boolean rect3Over = false;
boolean rect4Over = false;
boolean rect5Over = false;
boolean circleOver = false;
color rectColor,circleColor;
color rectHighlight,circleHighlight;
int number =0;
ArrayList<Country> countries;
void settings(){
  size(841,960);
}
void setup(){
  img = loadImage("Africa1.png");
  image(img, 0, 0);
  Maps x = new Maps();
  countries = x.getCountries();
  circleColor = color(255);
  circleHighlight = color(204);
  rectColor = color(0);
  rectHighlight = color(51);
  rect1X = 20;
  rect1Y = 655;
  rect2X = 80;
  rect2Y = 655;
  rect3X = 140;
  rect3Y = 655;
  rect4X = 200;
  rect4Y = 655;
  rect5X =260;
  rect5Y = 655;
  circleX = 170;
  circleY = 590;
  //println(countries); 
  
}
void reload(){
  background(255);
 setup();
 rect1Over = false;
}
void draw() { 
  update(mouseX, mouseY);
  if (rect1Over) {
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  ellipse(circleX, circleY, CircleSize, CircleSize);
  textSize(16);
  stroke(255);
  fill(0); 
  rect(rect1X, rect1Y, rectSize, rectSize);
  fill(0, 102, 153);
  text("Clear", rect1X+rectSize/6, rect1Y+rectSize/2);
  fill(0);
  rect(rect2X, rect2Y, rectSize, rectSize);
  fill(0, 102, 153);
  textSize(20);
  text("Pop.", rect2X+6, rect2Y+rectSize/2);
  fill(0);
  rect(rect3X, rect3Y, rectSize, rectSize);
  textSize(16);
  fill(0, 102, 153);
  text("Malaria", rect3X+2, rect3Y+rectSize/2);
  fill(0);
  rect(rect4X, rect4Y, rectSize, rectSize);
  fill(0, 102, 153);
  text("GDP", rect4X+rectSize/4, rect4Y+rectSize/2);
  fill(0);
  textSize(18);
  rect(rect5X, rect5Y, rectSize, rectSize);fill(0);
  fill(0, 102, 153);
  text("Life", rect5X+15, rect5Y+rectSize/2);
  textSize(12);
  text("Expectancy", rect5X, rect5Y+rectSize/2 + 14); 
  
}

void mouseClicked() { 
  //println(mouseX);
  //println(mouseY);
   if (circleOver) {
    win = new Key(1);
  }
  if(rect1Over){
   reload();
   //println("reloaded");
  }  
  else if(rect2Over){
    win = new Key(2);
    //println("pop");
    changeColors(2);
    rect2Over = false;
  }
  else if(rect3Over){
    win = new Key(3);
    //println("malaria");
    changeColors(3);
    rect3Over = false;
  }
  else if(rect4Over){
    win = new Key(4);
    //println("gdp");
    changeColors(4);
    rect4Over = false;
  }
  else if(rect5Over){
    win = new Key(5);
    //println("life");
    changeColors(5);
    rect5Over = false;
  }
  
}
  
void changeColors(int n){
  reload();
  loadPixels();
  
  for(int j= 0; j<countries.size(); j++){
    
    Country country = countries.get(j);
     
       for(int k = 0; k < width*height; k ++)
       if((""+hex(pixels[k])).substring(2).equals(country.getColor())){
        
         pixels[k] = toRGB(country.colorVal(n));
        
    }

    updatePixels();

    }
  }


color toRGB(int i){
  //println(i);
  color c; 
  if(i==0){
     c = color(255, 255, 255);
     return c;
  }
  if(i==1){
     c= color(229, 0, 78);
     return c;
  }
  if(i==2){
     c = color(213, 1, 71);
     return c;
  }
  if(i==3){
     c = color(198, 3, 64);
     return c;
  }
  if(i==4){
     c= color(182, 5,57);
     return c;
  }
  if(i==5){
     c = color(167,6,51);
     return c;
  }
  if(i==6){
     c= color(152,8,44);
     return c;
  }
  if(i==7){
     c = color(136,10,37);
     return c;
  }
  if(i==8){
  c = color(121,11,31);
  return c;
  }
  if(i==9){
  c = color(105,13,24);
  return c;
  }
  if(i==10){
  c = color(90,15,17);
  return c;
  }
  if(i==11){
  c = color(75,17,11);
  return c;
  }
  else{
    return color(255,255,255);
  }
} 
void update(int x, int y) {
  if(overCircle(circleX, circleY, CircleSize)){
    circleOver=true;
    rect1Over = false;
    rect2Over = false;
    rect3Over = false;
    rect4Over = false;
    rect5Over = false;
  }
  if ( overRect(rect1X, rect1Y, rectSize, rectSize) ) {
    rect1Over = true;
    rect2Over = false;
    rect3Over = false;
    rect4Over = false;
    rect5Over = false;
    circleOver=false;
  }
  if ( overRect(rect2X, rect2Y, rectSize, rectSize) ) {
    rect2Over = true;
    rect1Over = false;
    rect3Over = false;
    rect4Over = false;
    rect5Over = false;
    circleOver=false;
  }
   if ( overRect(rect3X, rect3Y, rectSize, rectSize) ) {
    rect3Over = true;
    rect2Over = false;
    rect1Over = false;
    rect4Over = false;
    rect5Over = false;
    circleOver=false;
  }
  
  if ( overRect(rect4X, rect4Y, rectSize, rectSize) ) {
    rect4Over = true;
    rect2Over = false;
    rect3Over = false;
    rect1Over = false;
    rect5Over = false;
    circleOver=false;
  }
  
  if ( overRect(rect5X, rect5Y, rectSize, rectSize) ) {
    rect5Over = true;
    rect2Over = false;
    rect3Over = false;
    rect4Over = false;
    rect1Over = false;
    circleOver=false;
  }
}
boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}