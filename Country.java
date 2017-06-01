import java.util.*;
public class Country{
    int color;
    String[] data;
    String filename; 

    public Country(int colour){
    filename = "info.txt";
    color = colour;
    scanInfo();
    }

    private void scanInfo(){
    String s = findColor();
    if(s.equals("not found")){
	// throw exception
    }
    data=s.split(",");
    }

    private String findColor(){
        Scanner in = new Scanner(new File(filename));
	    while(in.hasNext()){
		String line = new Scanner(in.nextLine());
		    if(line.contains(color)){
			return current;
		    }
	    }
	    return "not found";	    
    }

}
								   
										}
										


										
