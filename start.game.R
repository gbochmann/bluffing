start.game <-function( players ){
  
  
  deck <-shuffle.deck()
  
  turn <-0
  # create players
  hands <-list()
  for ( p in 1:length( players )){
    hands <-bank( turn, players[ p ], hands, 0, 0)
  }
  
  bidders <-character()
  while ( length( deck ) >0 ){
    turn <-turn +1
    a.master <-auction.master( turn, players )
    turn.players <-players[ players !=a.master ]
    current.turn <-auction( deck, turn.players, hands, turn, players[ a.master])
    deck <-current.turn[[ 4 ]]
    bidders <-c( bidders, current.turn[[ 1 ]])
    hand.history <-
    
  }
  
  return( bidders )
  
}