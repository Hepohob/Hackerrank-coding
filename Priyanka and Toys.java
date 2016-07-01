import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int count = 1;
        int arr[] = new int[n];
        for (int i=0;i<n;i++) arr[i] = sc.nextInt();
        Arrays.sort(arr);
        int value = arr[0];
        for (int i=0;i<n;i++) { 
            if (arr[i]>value+4) {
                count++;
                value=arr[i];
            }
         }
        System.out.println(count); 
    }
}
