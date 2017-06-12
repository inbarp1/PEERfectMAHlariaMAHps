# PEERfectMAHlariaMAHps
<h2> Mahesh Saha and Inbar Pe'er <br>
Pd. 06 </h2>
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 AP CS Final Project - Africa Map
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 ---------------
| Instructions: |
 ---------------
<b> To Visualize Data </b>
1) Run Processing on Map.pde <br>
2) Select the data type you would want to see displayed on the map <br>
3) A window will pop up with a key, you can move it over to the side but DO NOT CLOSE it because it will exit the whole program <br>
4) Be patient and wait a bit so that the program can run and the map should change colors <br>
5) You can clear the map and repeat this process with a different data type <br>

 -------------------
| Working Features: |
 -------------------
Changing map color based on clicking buttons<br>
Creating country datatypes <br>
Key to display the current color scheme

 --------------------
| To be Implemented: |
 --------------------
Click on countries to display a window with specific stats <br>
Gradient pattern development based on data criteria <br>
 ---------
| DevLog: |
 ---------
--Initially laid out base java files with constructors to create a country, accessors and overall map
-- Started processing, but ran into major road block with image file type
-- Had to back track and reset image, because .jpg was a loosey file type; swapped to .png
-- Started the basic processing element. Reading the file was very difficult because we had not realized that loadStrings is the only way to interpret a file; used very weird file paths
-- Pixel reading algorithm extremely slow because of double for-loop. The better alternative is hash mapping but we are not very experienced with that
—It took a very long time to figure out how to change color properly because we initially tried using hex codes but it would change to the wrong color. We Eventually changed to RBG values for color values and our program functioned properly. 
-- Buttons implemented to narrow down based on criteria
-- FINALLY changed the scanner type to match the processing loader
-- Windows created to represent the Key for each criteria
-- Initial goal of project has been achieved!


