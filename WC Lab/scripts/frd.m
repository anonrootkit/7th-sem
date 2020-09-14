#Frequency reuse distance, D = R*sqrt(3*N)

function f = frd()
  cluster_size = 7;
  printf("Experiment no 1\n");
  printf("Program to calculate the frequency reuse distance\n");
  printf("Total number of channels : %d\n", cluster_size);
  r = input("Enter the value of R : ");
  result = r * sqrt(3*cluster_size);
  printf("Result : %f\n", result);
endfunction