import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in); 
        String acgt = "ACGT";
		int n = scan.nextInt();
		String s = scan.next();
		int[] arr = new int[n];
		int[] cnt = new int[4];
        int rightIndex = 0;
        int result = n;
		for (int i = 0; i < n; i++) {
			arr[i] = acgt.indexOf(s.charAt(i));
		}
        for (int i = n - 1; i >= 0; i--){
            cnt[arr[i]]++;
            if (!isSteady(cnt,n/4)) {
                rightIndex = i+1;
                cnt[arr[i]]--;
                break;
            }
        }
        for(int leftIndex = -1; leftIndex<n-1 && rightIndex<n && leftIndex < rightIndex; leftIndex++){
             while(!isSteady(cnt,n/4) && rightIndex<n){
                cnt[arr[rightIndex]]--;
                rightIndex++;
             }
             if(rightIndex>n || !isSteady(cnt, n/4)) break;
             int len = Math.max(0, rightIndex-leftIndex-1);
             if(len < result) result = len;
             cnt[arr[leftIndex+1]]++;
        }
        System.out.println(result);        
    }

    public static boolean isSteady(int[] cnt, int limit) {
        if (cnt[0]<=limit && cnt[1]<=limit && cnt[2]<=limit && cnt[3]<=limit) { return true; }
        return false;
    }
}
