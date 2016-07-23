import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        int c[] = new int[n];
        int jump=0;
        int pass=0;
        for(int c_i=0; c_i < n; c_i++){
            c[c_i] = in.nextInt();
         }
        if (n>2){
        int i=0;
        while(i < n-1){
            if (i+2==n){
                jump++;
                break;
            }
            if (c[i+2]==1){
                i++;
                jump++;
            } else {
                i+=2;
                jump++;
            }
//System.out.println(i);
         }
        } else {
            jump = 1;
        }
        System.out.println(jump);
    }
}

