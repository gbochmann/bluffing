calculate.transaction <-function( minuend, target.value ){
  
  subtrahend <-matrix( 0, 1, 7, T, list( "n", c( 500, 200, 100, 50, 20, 10, 0 )))
  values <-names( minuend )
  
  # determine the difference first by finding possible combinations of the result?
  # try the initial algorithm again
  # maybe using the difference will help
  
  e <-ncol( minuend ) +1
  while (TRUE){
    if (e ==ncol( minuend ) +1){
      e <-1 
    }
    if ( minuend[ e ] >0 ){
      minuend[ e ] <-minuend[ e ] -1
      subtrahend[ e ] <-subtrahend[ e ] +1
      
      abs.subtrahend <-handvalue( subtrahend )
      difference <-target.value -abs.subtrahend
      
      if (  difference==0 ){
        break
      }else if ( difference <0 ){
        minuend[ e ] <-minuend[ e ] +1
        subtrahend[ e ] <-subtrahend[ e ] -1
      }
    }
    
    e <-e +1
  }
  
  return( subtrahend )
}