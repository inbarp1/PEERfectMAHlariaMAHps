
PImage img;
ArrayList<Country> countries;
void setup(){
  size(900, 1027);
  img = loadImage("Africa1.png");
  image(img, 0, 0);
  Maps x = new Maps();
  countries = x.getCountries();
  
}

void mouseClicked() {  
  color c = pixels[mouseY*width+mouseX];
  //println((hex(c)+"").substring(2));
  //curr = new Country(""+hex(c).substring(2));
  //println(curr.getColor());
  println("Click happened");
  
  for (int i = 0; i < width*height; i++) {
    int j = 0;
    while (j < countries.size()){
        //println(hex(pixels[i]));
        if((""+hex(pixels[i]).substring(2)) == countries.get(j).getColor()){
           pixels[i]=#ff0000;
         }
     }
  }
}
  
void draw() {
  loadPixels();
/*if (mousePressed == true ){
   // System.out.println(curr.getColor());
    for (int i = 0; i < width*height; i++) {
         if(pixels[i] + ""== curr.getColor()){
           pixels[i]=#ff0000;
         }
       }
  }*/
   updatePixels();
}