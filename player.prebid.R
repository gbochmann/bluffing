player.prebid <-function( current.card, current.bid, my.hand ){
  limits <-player.limits( current.card, my.hand )
  if ( current.bid >limits[ 1 ] ){ # don't make an offer if the current bidding is greater than your limit for any card
    return( Inf )
  }else if ( current.bid >limits[ 2 ]){ # don't make an offer if the current bidding is greater than your limit for this card
    return( Inf )
  }else{
    delay <-handvalue( my.hand ) -current.bid
  }
  
  return( delay )
  
}