set INTERSECTIONS;
set ROADS within (INTERSECTIONS cross INTERSECTIONS);

param time {ROADS} >= 0;
param capacity {ROADS} >= 0;

maximize Flow;

node Balance {k in INTERSECTIONS}: net_out = 0;
 
arc Traffic {(i,j) in ROADS} <= capacity[i,j], >=0,
  from Balance[i], to Balance[j], obj Flow time[i,j];

  
  
  