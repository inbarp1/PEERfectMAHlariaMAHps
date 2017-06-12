import java.util.*;
import java.io.*;

public class Maps{
    public Country current;
    public ArrayList<Country> countries;
    public String filenameMahesh;
    public String filenameInbar;
    public String[] lines;
    
    public Maps(){
      lines = loadStrings("info.txt");  
	    countries = new ArrayList<Country>();
	    createCountry();
//System.out.println(countries);
    }
    
    public void createCountry(){
      for(int i = 0; i < lines.length; i ++){
        String[]country = lines[i].split(",");
        //println(country[1]);
        countries.add(new Country(country[1]));
      }
    }
	
    
    public ArrayList<Country> getCountries(){
      return countries;
    }
}