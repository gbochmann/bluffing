player.limits <-function( current.card, my.hand ){
  highest.any.offer <-handvalue( my.hand ) *0.5 # How much for any card?
  highest.ind.offer <-highest.any.offer /( 1000 /current.card ) # How much for this card?  
  
  return( c(highest.any.offer, highest.ind.offer ))
}