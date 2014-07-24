auction <-function( deck, players, hands, turn, auction.master ){
  
  drawing <-draw.card( deck )
  current.card <-drawing[[ 1 ]]
  deck <-drawing[[ 2 ]] 
  current.bid <-0
  delay <-numeric()
  bidder <-character()
  
  
  while ( TRUE ){
    for( p in 1:length( players )){
      delay <-c( delay, player.prebid( current.card, current.bid, hands[[ players[ p ]]]))
      
    }
    
    
    if ( sum( is.infinite( delay )) ==3 ){
      hands <-bank( turn, bidder, hands, current.bid, 0 )
      hands <-bank( turn, auction.master, hands, 0, current.bid )
      break
      
    }else{
      bidder <-players[ delay ==min( delay)]
      
      if ( length( bidder ) >1 ){
        bidder <-sample( bidder, 1 )
        
      }
      
    }
    current.bid <-current.bid + player.make.offer( current.card, hands[[  bidder  ]]  )
    delay <-numeric()
    
  }
  
  return( list( bidder, current.bid, current.card, deck ))
  
}