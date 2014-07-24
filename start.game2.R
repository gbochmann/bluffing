start.game <-function( players ){
  
  
  deck <-shuffle.deck()
  
  turn <-0
  # create players
  hands <-matrix( c( 0, 0, 0 , 1, 1, 1, 2 ), length( players ), 7, TRUE, list( players, c( 500, 200, 100, 50, 20, 10, 0 ) ))
  
  a.master <-1
  bidders <-character()
  hand.history <-list()
  while ( length( deck ) >0 ){
    turn <-turn +1
    a.master <-auction.master( a.master, players )
    turn.players <-players[ players !=players[ a.master ]]
    current.turn <-auction( deck, turn.players, hands, players[ a.master])
    hands <-current.turn[[ 5 ]]
    deck <-current.turn[[ 4 ]]
    bidders <-c( bidders, current.turn[[ 1 ]])
    hand.history[[ turn ]] <-hands
    
  }
  
  return( bidders )
  
}