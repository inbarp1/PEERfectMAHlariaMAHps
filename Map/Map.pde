
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
  for(int j= 0; j<countries.size(); j++){
    Country country = countries.get(j);
    String now = country.getColor(); 
    String  next = country.colorVal(2);
    next =  "FF"+ next.substring(3);
    for(int i = 0; i< width*height; i++){
      if(""+hex(pixels[i])== now){
        println("here");
        pixels[i]= unhex(next);
      }
     
    }
    //println(now);
    //println(next);
    updatePixels();
  }
}
  
void draw() {
  loadPixels();
}