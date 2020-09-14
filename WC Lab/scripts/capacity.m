function f = capacity()
	cluster_size = input("Enter the total clusters in system: ");
	N = input("Enter total frequency channels : ");
	capacity = cluster_size * N;
	printf("Total system capacity : %d\n", capacity);
endfunction