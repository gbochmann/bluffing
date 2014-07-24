calculate.transaction <-function( hand, target.value ){
  
  transaction <-matrix( 0, 1, 7, T, list( "n", c( 500, 200, 100, 50, 20, 10, 0 )))
  
  for ( j in 1:( ncol( hand )-1) ){
    if ( hand[ 1, j ] >0 ){
      n <-hand[ 1, j ]
      
      for( i in 1:n ){
        hand[ 1, j ] <-hand[ 1, j ] -1
        transaction[ 1, j] <-transaction[ 1, j ] +1
        
        test.value <-target.value - handvalue( transaction )
        
        if ( test.value ==0 ){ 
          return( transaction )
          
        }else if ( test.value <0 ){
          hand[ 1,j ] <-hand[ 1, j ] +1
          transaction[ 1,j] <-transaction[ 1,j] -1
          break
          
        }
        
      }
    }     
    
  }
  
  for ( j in ( ncol( hand ) -1):1 ){
    if ( hand[ 1, j ] >0 ){
      n <-hand[ 1, j ]
      
      for ( i in 1:n ){
        hand[ 1, j ] <-hand[ 1, j ] -1
        transaction[ 1, j ] <-transaction[ 1, j ] +1
        
        test.value <-target.value - handvalue( transaction )
        
        if ( test.value <0 ){
          return( transaction )
        }
      }
    }
  }
  
  
}