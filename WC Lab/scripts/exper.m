
function ex = exper()
  pr_blocking = input ( "Enter probability of blocking : " ) ;
  pr_delay = input ( "Enter probability of blocked call delay : " ) ; 
  y = input ( "Enter call rate : " ) ;
  H = input ( "Enter the average call duration : " ) ;
  c = input ("Enter the number of channels : ") ; 
  printf ("Number of channels = %d \n", c) ;
  Au = y* H ;
  p =0;
    for A =1:1:100
      while (p < pr_blocking )
        [ p ]= erlangB (A , c );
        A = A +1;
      end
      printf ("For blocking probability of  %f \n", pr_blocking ) ; 
      printf ("Maximum traffic intensity is %d \n", A -1) ;
      u =( A -1) / Au ;
      printf ("%d users are accomodated \n", u) ;
      break ;
    end
  p =0;
    for A =1:1:100
      while (p < pr_delay )
        [ p ]= erlangC (A , c );
        A = A +1;
      end
      printf ("For block call delay probability of  %f  \n",  pr_delay ) ;
      printf ("Maximum traffic intensity is %d \n",A -1) ;
      u =( A -1) / Au ;
      printf ("%d users are accomodated \n", u) ; 
      break ;
    end
endfunction

function [ p1 ]= erlangB ( A1 , c1 )
  pr2 =0;
  pr1 = A1 ^ c1 / factorial ( c1 ) ;
  for k =1: c1
   pr2 = pr2 +( A1 ^ k / factorial ( k ) ) ;
  end
 p1 = pr1 / pr2 ;
endfunction

function [ p2 ]= erlangC (A2 , c2 )
  temp_1 =0;
  for k =0: c2 -1
    temp_1 = temp_1 + A2 ^ k/ factorial (k ) ;
  end
  denominator = A2 ^ c2 +( factorial ( c2 ) *(1 -( A2 /c2 ) ) * temp_1 ) ;
  p2 = A2 ^ c2 / denominator ;
endfunction
