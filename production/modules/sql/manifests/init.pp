class sql {
  file { 'yz':
  path    => '/root/g.txt',
  ensure  => file,
  content => 'welcome to hcl' ,
  }
  }

