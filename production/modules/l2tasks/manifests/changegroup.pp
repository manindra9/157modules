class l2tasks::changegroup {
  exec { 'Change Group':
    command  => 'usermod -G group3 xyz',
    path     => ['/usr/bin', '/usr/sbin'],
    logoutput => true,
  }
}
