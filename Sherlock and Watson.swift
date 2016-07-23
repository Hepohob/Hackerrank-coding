import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        int k = in.nextInt();
        int q = in.nextInt();
        List<Integer> arr = new ArrayList<>();
        for (int i=0; i<n; i++) arr.add(in.nextInt());
        for (int i=0; i<k; i++) {
            int tmp = arr.get(arr.size() - 1);
            arr.remove(arr.size() - 1);
            arr.add(0,tmp);
        }
        for (int i=0; i<q; i++) {
            int x = in.nextInt();
            System.out.println(arr.get(x));
        }
    }

}
