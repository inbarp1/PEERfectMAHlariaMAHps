PImage img;

void setup(){
  size(693, 627);
  img = loadImage("Africa.jpg");
  img.resize(693,627);
    image(img, 0, 0);

}

void draw() {
  loadPixels();
}

 void mouseClicked() {
  
   color c = pixels[mouseY*width+mouseX];
   System.out.println(c);
   if (){
       for (int i = 0; i < width*height; i++) {
         if(pixels[i]== #0000FF){
           pixels[i]=#ff0000;
         }
       }
   }
   updatePixels();
 
     
  println("Click happened");
     }
     