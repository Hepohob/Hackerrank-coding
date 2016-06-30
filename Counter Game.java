import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int t = in.nextInt();
        for(int i=0;i<t;i++) {
            BigInteger n = in.nextBigInteger();
            int last = n.getLowestSetBit();
            int count = n.bitCount();
            if (last==0) {
                if (count==1){
                    count = 1;
                } else {
                    count=count-1;
                }
            } else {
                count = count+last-1;
            }
            if (count%2==1) {
                System.out.println("Louise");
            } else {
                System.out.println("Richard");                
            }
         }
    }
}
