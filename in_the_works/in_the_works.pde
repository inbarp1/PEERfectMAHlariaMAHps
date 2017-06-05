PImage img;  

void setup() {
  size(500, 500);
  img = loadImage("Africa.jpg");  // Load the image into the program  
  colorMode(HSB);
}
void mousePressed(){
  redraw();
}
void draw() {
  loadPixels();
  img.loadPixels();
     
}
void redraw(String col){
  for (int i = 0; i < width*height; i++) {
  if (pixels[i] == col) {  // If it is red
      pixels[i] =   // Make it green
      continue;  // Continue to avoid the next statement
    }
}