class PWindow extends PApplet {
  int n;
  PWindow(int num) {
    super();
    n= num;
    PApplet.runSketch(new String[] {this.getClass().getSimpleName()}, this);
  }
 void setup(){
}
void settings(){
  size(400,400);
}
void draw(){
  if(n==2){
    fill(color(90,15,17));
    rect(10,10,30,30);
    fill(0);
    text( "100,000<= x > 50,000", 10, 10);
    fill(color(105,13,24));
    rect(10,50,30,30);
    fill(0);
    text( "500,000<= x > 10,000", 10, 50);
    fill(color(121,11,31));
    rect(10,90,30,30);
    fill(0);
    text( "1,000,000<= x > 500,000", 10, 90);
    fill(color(136,10,37));
    rect(10,130,30,30);
    fill(0);
    text( "3,000,000<= x > 1,000,000", 10, 130);
    //
    fill(color(152,8,44));
    rect(10,170,30,30);
    fill(0);
    text( "5,000,000<= x > 3,000,000", 10, 170);
    fill(color(167,6,51));
    rect(10,210,30,30);
    fill(0);
    text( "5,000,000<= x > 10,000,000", 10, 210);
    fill(color(182, 5,57));
    rect(10,250,30,30);
    fill(0);
    text( "10,000,000<= x > 15,000,000", 10, 250);
    fill(color(198, 3, 64));
    rect(10,290,30,30);
    fill(0);
    text( "40,000,000<= x > 20,000,000", 10, 290);
    fill(color(213, 1, 71));
    rect(10,330,30,30);
    fill(0);
    text( "75,000,000<= x > 40,000,000", 10, 330);
  }
}
}