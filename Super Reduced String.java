import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in); 
        String s = scan.next();
        boolean cont=true;
        int index=0;
        while (cont) {
            if (index+1<s.length()){ 
                 if (s.charAt(index)==s.charAt(index+1)) {
                     s=s.substring(0,index)+s.substring(index+2);
                     index=0;
                 } else {index++;}
            } else { cont=false; }
        }
    if (s.length()!=0) System.out.println(s);
    else System.out.println("Empty String");
    }
}
