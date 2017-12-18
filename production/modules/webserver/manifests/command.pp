class webserver::command{
  file {'test':
    path => '/root/testdata/commandop.txt',
    ensure => file,
    
} 
 notify {'test':
   message => hi,
}


notify {'test11':
   message => bye,
}
   
  exec {'test11':
    command => 'ls /root > commandop.txt',
    cwd     => '/root/testdata/', 
    path    => '/bin/',
    require => File['test'],
#    notify ('i am in exec resource':)
  }
}
