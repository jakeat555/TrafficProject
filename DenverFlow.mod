set INTER;
set ROADS within (INTER cross INTER);

param time {ROADS} >= 0;
param capacity {ROADS} >= 0;

maximize Total_Time;

node Balance {k in INTER}: net_in = 0;

arc Traffic {(i,j) in ROADS} >= 0, <= time[i,j],
   from Balance[i], to Balance[j], obj Total_Time capacity[i,j]; 
  