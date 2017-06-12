import java.util.*;
import java.io.*;

public class Maps{
    public Country current;
    public ArrayList<Country> countries;
    public String[] lines;
    
    public Maps(){
      lines = loadStrings("info.txt");  
      countries = new ArrayList<Country>();
      createCountry();
    }
    
    public void createCountry(){
      for(int i = 0; i < lines.length; i ++){
        String[]country = lines[i].split(",");
        countries.add(new Country(country[1]));
      }
    }
  
    
    public ArrayList<Country> getCountries(){
      return countries;
    }
}