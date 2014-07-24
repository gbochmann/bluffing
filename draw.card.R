draw.card <-function( deck ){
  
  card <-deck[ 1 ]
  deck <-deck[ -1 ]
  
  return( list( card, deck ))
  
}