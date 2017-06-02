import java.util.*;
public class Country{
    int color;
    String[] data;
    String filename; 

    public Country(int colour){
    filename = "info.txt";
    color = colour;
    data = new String[10];
    scanInfo();
    }

    private void scanInfo(){
    String s = findColor();
    if(s.equals("not found")){
    }
    data=s.split(",");
    }

    private String findColor(){
        Scanner in = new Scanner(new File(filename));
	while(in.hasNext()){
	    String line = new Scanner(in.nextLine());
	    if(line.contains(""+ color)){
		return line;
	    }
	}
	return "not found";	    
    }
    
    public void changeColor(int thing){
	color = calcColor(thing);
    }

    public int getColor(){
	return color;
    }
    
    private int calcColor(int thing){
	if(thing = 2){
	    //malaria
	}
	if(thing = 3){
	    //gdp
	}
	if(thing= 4){
	    //death rate
	}	
}
								   
										}
										


										
