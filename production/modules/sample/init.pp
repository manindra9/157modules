class sample{
  file{'/etc/1.txt':
    ensure => 'present',
    source => '/etc/1.txt',
  }
}

