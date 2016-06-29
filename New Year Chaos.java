import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int T = in.nextInt();
        for(int a0 = 0; a0 < T; a0++){
            int n = in.nextInt();
            int q[] = new int[n];
            for(int q_i=0; q_i < n; q_i++){
                q[q_i] = in.nextInt();
            }
            // your code goes here
         int i = 0, numBribes = 0;
         boolean stop = false;
         for( i = n-2; i >= 0; i-- ) {
            int j = i+1, t = q[i];
            int ct = 0;
            while( j < n && t > q[j] ) {
                q[j-1] = q[j]; j++; ct++;
                if( ct > 2 ) {
                    System.out.println("Too chaotic");
                    stop = true;
                    break;
                }
            }
            if (stop) break;
            q[j-1] = t; numBribes += ct;
        }
        if (!stop) System.out.println(numBribes);
        }
    }
}
