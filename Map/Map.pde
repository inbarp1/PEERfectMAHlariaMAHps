PImage img;

void setup(){
  size(900, 1027);
  img = loadImage("Africa1.png");
    image(img, 0, 0);

}

void draw() {
  loadPixels();
}

void mouseClicked() {
  
   color c = pixels[mouseY*width+mouseX];
   System.out.println(c);
   if (c == #994c00){
       for (int i = 0; i < width*height; i++) {
         if(pixels[i]== #994c00){
           pixels[i]=#ff0000;
         }
       }
   }
   updatePixels();
 
     
  println("Click happened");
     }