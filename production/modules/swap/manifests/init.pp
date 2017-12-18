class swap {
  exec { 'swap':
    cwd     => '/etc',
    command => 'swapon --summary',
    path    => ['/usr/bin', '/usr/sbin',],
    logoutput => true
  }
}
