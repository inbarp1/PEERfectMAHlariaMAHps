import java.util.*;
import java.io.*;

public class Maps{
    public static Country current;
    public static ArrayList<Country> countries;
    public static String filename;
    
    public Maps(){
        filename = "C:\\Users\\THOR\\Documents\\GitHub\\PEERfectMAHlariaMAHps\\Map\\data\\info.txt";
	countries = new ArrayList<Country>();
	createCountry();
    }
    
    public void createCountry(){
	String line = "";
        String csvSplitBy = ",";
	
        try (BufferedReader br = new BufferedReader(new FileReader(filename))) {
	    while ((line = br.readLine()) != null) {
		String[]country = line.split(csvSplitBy);
		current = new Country(country[1]);
		countries.add(current);
	    }
       	}
	catch (IOException e) {
            e.printStackTrace();
        }
    }
    
    public ArrayList<Country> getCountries(){
      return countries;
    }
}