auction <-function( deck, players, hands, auction.master ){
  
  drawing <-draw.card( deck )
  current.card <-drawing[[ 1 ]]
  deck <-drawing[[ 2 ]] 
  current.bid <-0
  delay <-numeric()
  bidder <-character()
  
  
  while ( TRUE ){
    for( p in 1:length( players )){
      delay <-c( delay, player.prebid( current.card, current.bid, t( as.matrix( hands[ players[ p ], ]))))
      
    }
    
    
    if ( sum( is.infinite( delay )) ==length( players ) ){
      current.bid <-calculate.transaction( t( as.matrix( hands[ bidder, ])), current.bid )
      hands <-bank( bidder, hands, current.bid, c( 0, 0, 0, 0, 0, 0, 0 ))
      hands <-bank( auction.master, hands, c( 0, 0, 0, 0, 0, 0, 0 ), current.bid )
      break
      
    }else{
      bidder <-players[ delay ==min( delay)]
      
      if ( length( bidder ) >1 ){
        bidder <-sample( bidder, 1 )
        
      }
      
    }
    current.bid <-current.bid + player.make.offer( current.card, hands[ bidder ]  )
    delay <-numeric()
    
  }
  
  return( list( bidder, current.bid, current.card, deck, hands ))
  
}