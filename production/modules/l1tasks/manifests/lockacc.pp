class l1tasks::lockacc {
  exec {'lock':
    command => 'passwd -l xyz',
    path    => '/usr/local/bin/:/bin/', 
  }
}
