handvalue <-function( hand ){
  # This value determines the total hand value from a hand vector.
  total.value <-sum( hand *as.numeric( colnames( hand )))
  
  return( total.value )
}