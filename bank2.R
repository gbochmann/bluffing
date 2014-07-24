bank <-function( player.name, hands, incoming, outgoing ){
  
  # The bank is invoked to carry out transactions. Incoming cards are simply added to the hand, outgoing cards are subtracted.
  hands[ player.name, ] <-hands[ player.name, ] + incoming
  hands[ player.name, ] <-hands[ player.name, ] - outgoing
  
  # Finally, the bank returns a list of all players' current hands.
  return( hands )
  
}