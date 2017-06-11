
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
  String[] x = new String[53];
  //println(hex(get(tempX,tempY)));
  for(int i= 0; i<countries.size(); i++){
    Country country = countries.get(i);
    x[i] = ("FF" + country.colorVal(2).substring(3));
  }
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
       println("here");
       //println(get(tempX,tempY));
      // println(next);
       for(int k = 0; k < width*height; k ++)
       if(pixels[k] == get(tempX,tempY)){
         //println(pixels[k]);
         pixels[k] = unhex(x[j]);
         updatePixels();
         println("changed pixels");
         //println(pixels[k]);
         
       }
       //set(tempX,tempY,unhex(next));
    }
    updatePixels();
    }
  }



void draw() {
  loadPixels();
  
}