import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        int[] arr = new int[n];
        String B = in.next();
        int res=0;
        if (n>2)
        for (int i = 0; i < n; i++) {
			arr[i] = B.charAt(i)-48;
            if (i>2) if (arr[i-3]==0 && arr[i-2]==1 && arr[i-1]==0) { 
                    if (arr[i]==1) {
                        arr[i-1]=1;
                        res++;
                    } else {
                        arr[i-2]=0;
                        res++;
                    }
            }
            if (i==n-1 && arr[i-2]==0 && arr[i-1]==1 && arr[i]==0) {  
                arr[i-1]=0;
                res++;
            }
		}
        System.out.println(res);
    }
}
