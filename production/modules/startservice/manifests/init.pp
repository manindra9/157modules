class startservice {

     service { 'firewalld':
          ensure => running,
               default_start => [ '3' , '4' , '5'],
                 }
                   }
