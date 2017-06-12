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

 -------------------
| Working Features: |
 -------------------
Changing map color based on clicking <br>
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
-- Initially laid out base java files with constructors to create a country, accessors and overall map
-- Started processing, but ran into major road block with image file type
-- Had to back track and reset image, because .jpg was a loosey file type; swapped to .png
-- Started the basic processing element. Reading the file was very difficult because we had not realized that loadStrings is the only way to interpret a file; used very weird file paths
-- Pixel reading algorithm extremely slow because of double for-loop. The better alternative is hash mapping but we are not very experienced with that
-- Basic color-changing options implemented
-- Buttons implemented to narrow down based on criteria
-- FINALLY changed the scanner type to match the processing loader
-- Windows created to represent the Key for each criteria
-- Initial goal of project has been achieved!


