include<stdio.h> 
 #include<unistd.h> 
  
  int main() 
  { 
     pid_t pid; 
     int tmp = 10; 
 
     printf ( "The main program process ID is %d\n\n", getpid() ); 
     printf ( "Calling fork now\n\n" ); 
   
     pid = fork(); 
     printf ( "fork has been called, pid returned is %d\n", pid ); 
 
    if ( pid == 0 ) 
    { 
        printf( "This is the Child, getpid is %d\n", getpid() );
    } 
    else if ( pid > 0 ) 
    { 
        printf( "This is the Parent, getpid is %d\n", getpid() );
    }    
    else 
       printf ( "Fork failed, no child\n" ); 
 return 0; 
}


