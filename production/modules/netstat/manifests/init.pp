class netstat {
  exec { 'networkinterface':
    cwd     => '/root',
    command => 'netstat -i',
       #cwd     => 'C:\', #windows
       #command => 'ipconfig', #windows
    path    => ['/usr/bin', '/usr/sbin',],
    logoutput => true
  }
}
