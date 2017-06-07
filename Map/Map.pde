PImage img;
Country curr; 
void setup(){
  size(900, 1027);
  img = loadImage("Africa1.png");
    image(img, 0, 0);

}

void draw() {
  loadPixels();
  if (mousePressed== true ){
    System.out.println(curr.getColor());
    for (int i = 0; i < width*height; i++) {
         if(pixels[i] + ""== curr.getColor()){
           pixels[i]=#ff0000;
         }
       }
  }
   updatePixels();
}

void mouseClicked() {  
  color c = pixels[mouseY*width+mouseX];
  curr = new Country(""+c);
   
 
     
  println("Click happened");
     }