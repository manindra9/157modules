class l2tasks::groupdetails {
  exec { 'Group Details':
    command  => 'cat /etc/group | grep root',
    path     => '/usr/local/bin/:/bin/',
    logoutput => true,
  }
}
