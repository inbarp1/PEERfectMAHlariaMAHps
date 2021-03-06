import java.util.*;
import java.io.*;

public class Country{
    public String colors;
    public String[] data;
    public String[] lines;
    public Country(String colour){
      colors = colour;
      scanInfo();
    }
    
    private void scanInfo(){
      String s = findColor();
  if(s.equals("Country not found")){
      return;
  }
  data=s.split(",");
    }

    public String Name(){
  if(data.length < 6)
      return "No data";
  return data[0];
    }
    
    public int Population(){
  if(data.length < 6)
      return 0;
  return Integer.parseInt(data[2]);
    }

    public int MalariaDeath(){
  if(data.length < 6)
      return 0;
    return (int)Double.parseDouble(data[3]);
    }

    public Double GDP(){
  if(data.length < 6)
      return 0.0d;
  return Double.parseDouble(data[4]);
    }

    public Double LifeExpectancy(){
  if(data.length < 6)
      return 0.0d;
  return Double.parseDouble(data[5]);
    }
    
  public String findColor(){
  String line = "";
  String data = "Country Not Found";
  lines = loadStrings("info.txt"); 
    for (int i = 0; i < lines.length; i ++){
    String[] country = lines[i].split(",");
    line = lines[i];
    if(country[1].equals(""+colors)){
        data = line;
    }
    }
  
  return data;
    }
   

    public String getColor(){
      return colors;
    }
    public int colorVal(int thing){
    if(thing == 2)
      return popVal();
  if(thing == 3)
      return malVal();
  if(thing == 4)
      return monVal();
    if(thing == 5)
     return lifeVal();
   return -1;
    
    }
    private int popVal(){
  if(this.Population()> 50000 && this.Population() <= 100000){
      return 10; //shade of red;
  }
  else if(this.Population()> 100000 && this.Population() <= 500000){
      return 9; //shade of red;
  }
  else if(this.Population()> 500000 && this.Population() <= 1000000){
      return 8; //shade of red;
  }
  else if(this.Population()> 1000000 && this.Population() <= 3000000){
      return 7;
      //shade of red;
  }
  else if(this.Population()> 3000000 && this.Population() <= 5000000){
      return 6;
      //shade of red;
  }
  else if(this.Population()> 5000000 && this.Population() <= 10000000){
      return 5;
      //shade of red;
  }
  else if(this.Population()> 10000000 && this.Population() <= 15000000){
      return 4;
      //shade of red;
  }
  else if(this.Population()> 15000000 && this.Population() <= 20000000){
      return 3;
      //shade of red;
  }
  else if(this.Population()> 20000000 && this.Population() <= 40000000){
      return 2;
      //shade of red;
  }
  else if(this.Population()> 40000000 && this.Population() <= 75000000){
      return 1;
      //shade of red;
  }
  else if(this.Population()> 75000000 && this.Population() <= 150000000){
      return 11;
      //shade of red;
  }
  else{
      return 11;
      
  }
    }
    
    private int malVal(){
  if(this.MalariaDeath()> 60){
      return 9; //shade of red;
  }
  if(this.MalariaDeath()>50){
      return 8; //shade of red;
  }
  if(this.MalariaDeath()> 40){
      return 5; //shade of red;
  }
  if(this.MalariaDeath()> 30){
      return 4; //shade of red;
  }
  if(this.MalariaDeath()> 20){
      return 3; //shade of red;
  }
  if(this.MalariaDeath()> 10){
      return 2; //shade of red;
  }
  if(this.MalariaDeath()> 0){
      return 1; //shade of red;
  }
  return 0;
          
    
    }

    
    private int monVal(){
  if(this.GDP()> 100){
      return 8;
  }
  if(this.GDP()> 50){
      return 7; //shade of red;
  }
  if(this.GDP()>10){
      return 3; //shade of red;
  }
  if(this.GDP()> 5){
      return 2;
  }
  if(this.GDP()> 0){
      return 1;
  }
        else{
      return 0;
  }
    }
    
    private int lifeVal(){
  if(this.LifeExpectancy() > 70){
      return 9;
  }
  else if(this.LifeExpectancy() > 65){
      return 8;
  }
  if(this.LifeExpectancy() > 60){
      return 4;
  }
  if(this.LifeExpectancy() > 55){
      return 3;
  }
  if(this.LifeExpectancy()> 50){
      return 2 ;//shade of red;
  }
  if(this.LifeExpectancy()>40){
    return 1;
  }
        else{
      return 0;
  }
    }
    
    public String calcValue(int thing){
  if(thing == 0)
      return Name();
  if(thing == 2)
      return Population() + "";
  if(thing == 3)
      return MalariaDeath() + "";
  if(thing == 4)
      return GDP() + "";
  if(thing == 5)
      return LifeExpectancy() + "";
  else
      return "Invalid input";
    }
    
  public String toString(){
    return Name();
  }
}         