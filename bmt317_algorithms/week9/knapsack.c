#include <stdio.h>

int max(int a, int b){
  return(a > b) ? a : b;
}

// w : capacity, wt[] : weights, val[] : values, n : number of items

int knapsack(int w, int wt[], int val[], int n){
  int dp[n+1][w+1];
  for(int i = 0; i <= n; i++){
    for(int w = 0; w <= W; w++){
      if(i == 0 || w == 0)
        dp[i][w] = 0; // Base case
      else if(wt[i-1] <= w)
        dp[i][w] = max(val[i-1] + dp[i-1][w-wt[i-1]],dp[i-1][w]);
      else
        dp[i][w] = dp[i-1][w];
    }
  }
  return dp[n][w];
}
