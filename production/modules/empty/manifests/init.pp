class empty {
  file { 'zempty':
    path      => '/etc',
    ensure    => present,
  }
}
