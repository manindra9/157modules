class usermod {
  file { '/etc/test' :
      ensure => 'directory',
 }
  user {'create home dir' :
       name => 'ashima',
       ensure => 'present' ,
        home => '/etc/test' ,
 }
   file{'/etc/test':
        ensure => 'directory',
      source => '/home/ashima',
      recurse => true,
 }
}
