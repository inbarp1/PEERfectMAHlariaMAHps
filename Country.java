import java.util.*;
import java.io.*;

public class Country{
    public static int color;
    public static String[] data;
    public static String filename; 

    public Country(int colour){
	filename = "info.txt";
	color = colour;
	scanInfo();
    }

    private String Name(){
	if(data.length < 6)
	    return "No data";
	return data[0];
    }
    
    private int Population(){
	if(data.length < 6)
	    return 0;
	return Integer.parseInt(data[2]);
    }

    private int MalariaDeath(){
	if(data.length < 6)
	    return 0;
	return Integer.parseInt(data[3]);
    }

    private Double GDP(){
	if(data.length < 6)
	    return 0.0;
	return Double.parseDouble(data[4]);
    }

    private Double LifeExpectancy(){
	if(data.length < 6)
	    return 0.0;
	return Double.parseDouble(data[5]);
    }
        
    public void changeColor(int thing){
	color = calcColor(thing);
	String line = "";
        String cvsSplitBy = ",";
	String data = "Country Not Found";
	
        try (BufferedReader br = new BufferedReader(new FileReader(filename))) {
	    while ((line = br.readLine()) != null) {
		//	System.out.println(line);
		String[] country = line.split(cvsSplitBy);
		//	System.out.println(color);
		//System.out.println(country[1]);
		if(country[1].equals(""+color)){
		    data = line;
		    //System.out.println(data);
		}
	    }
	}
	catch (IOException e) {
            e.printStackTrace();
        }
	return data;
    }

    public int getColor(){
	return color;
    }

    private String calcValue(int thing){
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
    
    public static  void main(String[]args){
	Country x = new Country(330066);
	System.out.println(x.calcValue(0));
	System.out.println(x.Population());
	System.out.println(x.MalariaDeath());
	System.out.println(x.GDP());
	System.out.println(x.LifeExpectancy());
	System.out.println(Arrays.toString(data));
    }
}
										


										
