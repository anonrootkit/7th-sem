function f = frf()
  cluster_size = 7;
  printf("Experiment no 1\n");
  printf("Program to calculate the frequency reuse factor\n");
  printf("Total number of channels : %d\n", cluster_size);
  r = input("Enter the value of R : ");
  d = r * sqrt(3*cluster_size);
  q = d / r;
  printf("Value of q is %d\n", q);
endfunction
