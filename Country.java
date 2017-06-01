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
    data=s.split(",");
    }

    private String findColor(){
    try{
        Scanner in = new Scanner(new File(filename));
	    while(in.hasNext()){
		Scanner line = new Scanner(in.nextLine()):
			    while(line.hasNext()){
					String current = line.next();
					       	       if(line.contains(color)){
								   
										}
										


										
