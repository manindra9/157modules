class files1::hiera {
  $var = hiera('foo1')
  file{'create':
    ensure => file,
    path   => '/tmp/1.txt',
    content => $var,
  }






}
