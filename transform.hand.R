transform.hand <-function( hand, value ){
  
  out.hand <-numeric()
  for (c in 1:ncol( hand )){
    n <-hand[ , c ]
    
    if ( n > 0 ){
      for( i in 1:n ){
        out.hand <-c( out.hand, names( hand[ , c ]))
      }
    }
  }
  
  return( as.numeric( out.hand ))
}