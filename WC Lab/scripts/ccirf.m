#Co Channel Interference Reduction, q = D/R

function f = ccirf()
  D = input("Enter the distance :");
  R = input("Enter the radius of cell : ");
  
  q = D/R;
  printf("Co channel interference reduction : %.2f\n", q);
endfunction
