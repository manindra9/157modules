class l1tasks::group {
  group { 'devops':
    ensure => present,
    gid    => 501,
  }
}
