auction.master <-function( a.master, players ){
  a.master <-a.master +1
  if ( a.master >length( players )){
    a.master <-1
  }
  
  return( a.master )
}