hshuffle.deck <-function(){
  
  animals <-rep( c("pferd", "kuh", "schwein", "esel", "ziege", "schaf", "katze", "gans", "hahn"), each =4)
  out <-rep( c( 1000, 800, 650, 500, 350, 250, 90, 40, 10), each =4)
  names( out ) <-animals
  out <-sample( out, length( out ), F )
  
  return( out )
  
}