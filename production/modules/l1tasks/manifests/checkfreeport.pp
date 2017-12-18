class l1tasks::checkfreeport {
  
  exec {'killing a task':
    command  => '',
    path     => '/usr/local/bin/:/bin/',
    logoutput => true,
  }
}
