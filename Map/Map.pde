
PImage img;
int rect1X, rect1Y, rect2X, rect2Y, rect3X, rect3Y,rect4X, rect4Y,rect5X, rect5Y;   
int rectSize = 50; 
boolean rect1Over = false;
boolean rect2Over = false;
boolean rect3Over = false;
boolean rect4Over = false;
boolean rect5Over = false;
color rectColor;
color rectHighlight;
int number =0;
ArrayList<Country> countries;
void setup(){
  size(841, 960);
  img = loadImage("Africa1.png");
  image(img, 0, 0);
  Maps x = new Maps();
  countries = x.getCountries();
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
  //println(countries); 
  
}
void reload(){
  background(0);
 setup();
}
void draw() { 
  update(mouseX, mouseY);
  if (rect1Over) {
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  color pink = color(255,38,191);
  color purple = color(192,16,246);
  color yellow = color(255,255,0);
  color blue = color(0,77,255);
  color green = color(131,235,111);
  textSize(12);
  stroke(255);
  fill(pink); 
  rect(rect1X, rect1Y, rectSize, rectSize);
  fill(0);
  text("Clear", rect1X+rectSize/4, rect1Y+rectSize/2);
  fill(green);
  rect(rect2X, rect2Y, rectSize, rectSize);
  fill(0);
  textSize(8);
  text("Population", rect2X, rect2Y+rectSize/2);
  fill(purple);
  rect(rect3X, rect3Y, rectSize, rectSize);
  textSize(12);
  fill(0);
  text("Malaria", rect3X, rect3Y+rectSize/2);
  fill(yellow);
  rect(rect4X, rect4Y, rectSize, rectSize);
  fill(0);
  text("GDP", rect4X+rectSize/4, rect4Y+rectSize/2);
  fill(blue);
  textSize(8);
  rect(rect5X, rect5Y, rectSize, rectSize);fill(0);
  text("Life Expectancy", rect5X, rect5Y+rectSize/2);
 
  
 
}

void mouseClicked() { 
  //println(mouseX);
  //println(mouseY);
  if(rect1Over){
   reload();
   println("reloaded");
  }  
  if(rect2Over){
    changeColors(2);
  }
  if(rect3Over){
    changeColors(3);
  }
  if(rect4Over){
    changeColors(4);
  }
  if(rect5Over){
    changeColors(5);
  }
  
}
  
void changeColors(int n){
  loadPixels();
  String[] x = new String[53];
  //println(hex(get(tempX,tempY)));
  //for(int i= 0; i<countries.size(); i++){
   // Country country = countries.get(i);
    //x[i] = ("FF" + country.colorVal(2).substring(3));
 // }
  //println(x);
  for(int j= 0; j<countries.size(); j++){
    //int tempX = mouseX;
    //int tempY = mouseY;
    //println(countries);
    Country country = countries.get(j);
    //println(country.calcValue(0));
    //if(((""+hex(get(tempX,tempY))).substring(2)).equals(country.getColor())){
       for(int k = 0; k < width*height; k ++)
       if((""+hex(pixels[k])).substring(2).equals(country.getColor())){
         //println(pixels[k]);
         //println(country.colorVal(3));
         pixels[k] = toRGB(country.colorVal(n));
         //println(country.colorVal(3));
         //println("changed pixels");
         //println(pixels[k]);
       //set(tempX,tempY,unhex(next));
    }
    println("done");
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
     c= color(246, 189,189);
     return c;
  }
  if(i==2){
     c = color(246,75,75);
     return c;
  }
  if(i==3){
     c = color(255, 0, 0);
     return c;
  }
  if(i==4){
     c= color(178, 9,9);
     return c;
  }
  if(i==5){
     c = color(119,15,15);
     return c;
  }
  if(i==6){
     c= color(73, 0,0);
     return c;
  }
  if(i==7){
     c = color(14,0,0);
     return c;
  }
  else{
  c = color(14,0,0);
  return c;
  }
} 
void update(int x, int y) {
  if ( overRect(rect1X, rect1Y, rectSize, rectSize) ) {
    rect1Over = true;
  }
  if ( overRect(rect2X, rect2Y, rectSize, rectSize) ) {
    rect2Over = true;
  }
   if ( overRect(rect3X, rect3Y, rectSize, rectSize) ) {
    rect3Over = true;
  }
  if ( overRect(rect4X, rect4Y, rectSize, rectSize) ) {
    rect4Over = true;
  }
  if ( overRect(rect5X, rect5Y, rectSize, rectSize) ) {
    rect5Over = true;
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