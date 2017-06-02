import java.util.*;
public class Maps{
    Country current;
    ArrayList<Country> countries;
    public Maps(){
	filename=info.txt;
	countries = new ArrayList<Country>;
	createCountry();
    }
    
    public void createCountry(){
	String[]data = new String[10];
	Scanner in = new Scanner(new File(filename));
	while(in.hasNext()){
	    String line = new Scanner(in.nextLine());
	    data=s.split(",");
	    current = new Country(data[1]);
	    countries.add(current);
	}
    }
    
	    
  
}
