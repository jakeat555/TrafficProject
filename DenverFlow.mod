set INTER;
set ROADS within (INTER cross INTER);

param time {ROADS} >= 0;
param capacity {ROADS} >= 0;

maximize Total_Capacity;

node Balance {k in INTER}: net_in = 0;

#arc Traffic {(i,j) in ROADS} >= 0, <= time[i,j],
#  from Balance[i], to Balance[j], obj Total_Capacity capacity[i,j]; 
 
arc Traffic {(i,j) in ROADS} >= 0, <= capacity[i,j],
  from Balance[i], to Balance[j], obj Total_Capacity time[i,j];