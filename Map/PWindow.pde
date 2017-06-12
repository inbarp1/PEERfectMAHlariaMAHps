class Key extends PApplet {
  int n;
  Country current;
  Key(int num) {
    super();
    n= num;
    PApplet.runSketch(new String[] {this.getClass().getSimpleName()}, this);
  }
  Key(int num, Country c){
    super();
    n= num;
    PApplet.runSketch(new String[] {this.getClass().getSimpleName()}, this);
    current = c;
  }

void settings(){
  size(800,800);

}
void draw(){
  if(n==2){
    textSize(25);
    fill(color(90,15,17));
    rect(10,10,60,60);
    fill(0);
    text( "100,000<= x > 50,000", 80, 50);
    fill(color(105,13,24));
    rect(10,80,60,60);
    fill(0);
    text( "500,000<= x > 10,000", 80, 120);
    fill(color(121,11,31));
    rect(10,150,60,60);
    fill(0);
    text( "1,000,000<= x > 500,000", 80, 190);
    fill(color(136,10,37));
    rect(10,220,60,60);
    fill(0);
    text( "3,000,000<= x > 1,000,000", 80, 260);
    fill(color(152,8,44));
    rect(10,290,60,60);
    fill(0);
    text( "5,000,000<= x > 3,000,000", 80, 330);
    fill(color(167,6,51));
    rect(10,360,60,60);
    fill(0);
    text( "5,000,000<= x > 10,000,000", 80, 400);
    fill(color(182, 5,57));
    rect(10,430,60,60);
    fill(0);
    text( "10,000,000<= x > 15,000,000", 80, 470);
    fill(color(198, 3, 64));
    rect(10,500,60,60);
    fill(0);
    text( "40,000,000<= x > 20,000,000", 80, 540);
    fill(color(213, 1, 71));
    rect(10,570,60,60);
    fill(0);
    text( "75,000,000<= x > 40,000,000", 80, 610);
    text( "Where x represents the number of people", 10, 700);
  }
  if(n==3){
    textSize(25);
    fill(color(105,13,24));
    rect(10,10,60,60);
    fill(0);
    text( "More than 60", 80, 50);
    fill(color(121,11,31));
    rect(10,80,60,60);
    fill(0);
    text( "More than 50", 80, 120);
    fill(color(167,6,51));
    rect(10,150,60,60);
    fill(0);
    text( "More than 40", 80, 190);
    fill(color(182, 5,57));
    rect(10,220,60,60);
    fill(0);
    text( "More than 30", 80, 260);
    fill(color(198, 3, 64));
    rect(10,290,60,60);
    fill(0);
    text( "More than 20", 80, 330);
    fill(color(213, 1, 71));
    rect(10,360,60,60);
    fill(0);
    text( "More than 10", 80, 400);
    fill(color(229, 0, 78));
    rect(10,430,60,60);
    fill(0);
    text( "More than 0", 80, 470);
    fill(color(225, 225, 225));
    rect(10,500,60,60);
    fill(0);
    text( "0 or no data", 80, 540);
    text( "Malaria deaths per 100,000 people", 10, 610);
  }
  if(n==4){
    textSize(25);
    fill(color(121,11,31));
    rect(10,10,60,60);
    fill(0);
    text("More than 100", 80, 50);
    fill(color(136,10,37));
    rect(10,80,60,60);
    fill(0);
    text( "More than 50", 80, 120);
    fill(color(198, 3, 64));
    rect(10,150,60,60);
    fill(0);
    text( "More than 10", 80, 190);
    fill(color(213, 1, 71));
    rect(10,220,60,60);
    fill(0);
    text( "More than 5", 80, 260);
    fill(color(229, 0, 78));
    rect(10,290,60,60);
    fill(0);
    text( "More than 0", 80, 330);
    fill(color(225, 225, 225));
    rect(10,360,60,60);
    fill(0);
    text( "0 or no data", 80, 400);
    text( "GDP Rate (billion USD)", 10, 470);
  }
  
  if(n==5){
    textSize(25);
    fill(color(105,13,24));
    rect(10,10,60,60);
    fill(0);
    text( "More than 70", 80, 50);
    fill(color(121,11,31));
    rect(10,80,60,60);
    fill(0);
    text( "More than 65", 80, 120);
    fill(color(198, 3, 64));
    rect(10,150,60,60);
    fill(0);
    text( "More than 60", 80, 190);
    fill(color(213, 1, 71));
    rect(10,220,60,60);
    fill(0);
    text( "More than 50", 80, 260);
    fill(color(229, 0, 78));
    rect(10,290,60,60);
    fill(0);
    text( "More than 40", 80, 330);
    fill(color(225, 225, 225));
    rect(10,360,60,60);
    fill(0);
    text( "No data", 80, 400);
    text( "Average Life Expectancy (years)", 10, 470);
  }
  if (n==6){
    frameRate(.2);
    background(random(225),random(225),random(225));
    PFont Font1 = createFont("Arial Bold", 32);  
    PFont Font2 = createFont("Arial Bold", 30);
    textFont(Font1);
    text("Displaying data for: " + current.Name(), 10, 50);
    textFont(Font2);
    text("Population (2014) = " + current.Population(), 10, 100);
    textFont(Font2);
    text("Rate of Malaria Death per 100,000 (2014) = " + current.MalariaDeath(), 10, 150);
    textFont(Font2);
    text("Global Domestic Product: GDP (2014) = " + current.GDP(), 10, 200);
    textFont(Font2);
    text("Life Expectancy (2014) = " + current.LifeExpectancy(), 10, 250);
  }
}
}