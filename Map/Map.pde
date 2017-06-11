
PImage img;
ArrayList<Country> countries;
void setup(){
  size(900, 1027);
  img = loadImage("Africa1.png");
  image(img, 0, 0);
  Maps x = new Maps();
  countries = x.getCountries();
  //println(countries); 
  
}

void mouseClicked() { 
  color pink = color(255, 102, 204);
  loadPixels();
  String[] x = new String[53];
  //println(hex(get(tempX,tempY)));
  //for(int i= 0; i<countries.size(); i++){
   // Country country = countries.get(i);
    //x[i] = ("FF" + country.colorVal(2).substring(3));
 // }
  //println(x);
  for(int j= 0; j<countries.size(); j++){
    int tempX = mouseX;
    int tempY = mouseY;
    //println(countries);
    Country country = countries.get(j);
    
    //println(country);
    //String now = country.getColor(); 
    //String next = country.colorVal(2);
    ////println(next);
    //next = "FF"+ next.substring(3);
    //System.out.println(next);
    if(((""+hex(get(tempX,tempY))).substring(2)).equals(country.getColor())){
      //println("here");
       //println(get(tempX,tempY));
      // println(next);
      //println(unhex(x[j]));
       println(country.calcValue(0));
       //println(country.calcValue(3));
       for(int k = 0; k < width*height; k ++)
       if((""+hex(pixels[k])).substring(2).equals(country.getColor())){
         //println(pixels[k]);
         //println(country.colorVal(3));
         pixels[k] = toRGB(country.colorVal(3));
         //println(country.colorVal(3));
         //println("changed pixels");
         //println(pixels[k]);
       }
       //set(tempX,tempY,unhex(next));
    }
  }
  updatePixels(); 
  }


color toRGB(int i){
  println(i);
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
void draw() {  
}