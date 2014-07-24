player.make.offer <-function( current.card, my.hand ){
  limits <-player.limits( current.card, my.hand ) # determine how far this player is willing to go
  highest.any.offer <-limits[ 1 ] # How much for any card?
  highest.ind.offer <-limits[ 2 ] # How much for this card?
  bid <-highest.ind.offer *0.1 # setting only a fraction of the highest possible individual offer.
  
  # The bidding can only be done using cards one actually can play. The player needs to determine which one he will play. This is a very simple version and will be updated by something more sophisticated soon. For the time being it's sufficient.
  if ( bid <10 ){ 
    bid <-10
  }else if( bid >10 & bid <20 ){ 
    bid <-10
  }else if( bid >20 & bid <50 ){
    bid <-20
  }else if( bid >50 & bid <100 ){
    bid <-50
  }else if( bid >100 & bid <200 ){
    bid <-100
  }else if( bid >200 & bid <500 ){
    bid <-200
  }else if( bid >500 ){
    bid <-500
  }
  
  return( bid )
  
}