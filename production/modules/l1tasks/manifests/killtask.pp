class l1tasks::killtasks {
  
$pid = hiera('pid')  
  exec {'killing a task':
    command  => 'kill $pid',
    path    => '/usr/local/bin/:/bin/',
  }
}
