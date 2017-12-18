
class lock_pass
{
user { 'omc':
    ensure => present,
    #forcelocal => false, 
    }
    exec { 'disabling-account':
        command => 'passwd -l omc',
         path => ['/usr/bin/'],
        }
     
     }
     

      

