class webserver::p::content{
  $str = 'h file written through content attribute'
	
  file{'create':
    ensure => file,
    path   => '/tmp/1.txt',
    content => $str,
}


}
