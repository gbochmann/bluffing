make.change <-function( target, H, values ){
  
  # initialize variables
  u <-length( H )
  delta.a_u <-rep( 0, times =u )
  a_u <-rep( 0, times =u )
  a_c <-0
  a_o <-a_u
  net.i_u <-rep( 1, times =u )
  net.i_c <-0
  delta.a_c <-0
  input.history <-matrix( data =net.input, nrow =1, ncol =u, byrow =TRUE )
  
  while ( TRUE ){
    for( n in 1:u ){
      # The change in activation is the product of the activation scale an the net input. The activation scale is limited by the maximum number of each card type in the player's hand.
      delta.a_u[ n ] <-( H[ n ] -a_u[ n ]) *net.i_u[ n ]    
      a_u[ n ] <-a_u[ n ] +delta.a_u[ n ]
      input.history <-rbind( input.history, net.i_u)
      
      net.i_c <-0
      net.i_c <-net.i_c +( a_u[ n ] *values[ n ] )
      
    }
    
    delta.a_c <-target -net.i_c
    
    for( n in 1:u ){
      
      delta.a_o <-values[ u ] +
      
    }
    
    # Ich brauche einen weiteren Layer, der prüft welcher Stückwert als nächstes verwendet werden muss, um den Zielwert zu erreichen
    
  }
    
  

  
  return( sum( a ))
}