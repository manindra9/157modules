class l1tasks::filecreate {
  file { '/tmp/1.txt':
    ensure  => present,
    content => 'Welcome',
  }
}
