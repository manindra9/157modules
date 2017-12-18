class webserver::p::symlink {
  file { 'create':
    ensure => file,
    path   => '/root/p/slink.txt',
    source => 'puppet:///modules/webserver/slink.txt',
  }
  file { '/root/createsymlink.txt':
    ensure => link,
   # cwd    => '/root/',
    target => '/root/p/slink.txt',
    require => File['/root/p/slink.txt'],
  }
}
