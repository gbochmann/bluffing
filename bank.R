bank <-function( turn, player.name, hands, incoming, outgoing ){
  
  
  if ( turn == 0 ){
    # In the first turn, the bank sets up a player hand and assigns the following start capital: c( 50, 20, 10, 10, 10, 0, 0 ).
    hands[[ player.name ]] <-c( 0, 0, 0 , 1, 1, 3, 2 )
    names( hands[[ player.name ]] ) <-c( 500, 200, 100, 50, 20, 10, 0 )
    
    
  } else {
    # On any other turn, the bank is invoked to carry out transactions. Incoming cards are simply added to the hand, outgoing cards are subtracted.
    hands[[ player.name ]] <-hands[[ player.name ]] + incoming
    hands[[ player.name ]] <-hands[[ player.name ]] - outgoing
  }
  
  # Finally, the bank returns a list of all players' current hands.
  return( hands )
  
}