
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
  int tempX = mouseX;
  int tempY = mouseY;
  //println(hex(get(tempX,tempY)));
  for(int j= 0; j<countries.size(); j++){
    //println(countries);
    Country country = countries.get(j);
    //println(country);
    String now = country.getColor(); 
    String next = country.colorVal(2);
    //println(next);
    next = "FF"+ next.substring(3);
    //System.out.println(next);
    
    if(((""+hex(get(tempX,tempY))).substring(2)).equals(now)){
       println("here");
       for(int i = 0; i < width*height; i ++)
       if(pixels[i] == get(tempX,tempY)){
         pixels[i] = unhex(next);
         println(pixels[i]);
         
       }
       //set(tempX,tempY,unhex(next));
    }
    updatePixels();
    }
  }



void draw() {
  loadPixels();
  updatePixels();
}