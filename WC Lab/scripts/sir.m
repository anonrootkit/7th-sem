function f = sir()
	num_cells = input("Enter the number fo cells in thecluster : ");
	val_path_loss = input("Enter the value of path loss exponent :");
	interf_cell = input("Enter the numbeof Co-channel interfering cell : ");

	sir = (sqrt(3*num_cells)^ val_path_loss)/interf_cell;

	printf("SIR : %d\n", sir);

endfunction