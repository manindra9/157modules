class h1 {
$var = hiera_array('foo')
#$var = lookup('foo', String, 'deep').include
#notify{" values: $var"}

file { 'cretae':
   path  => '/tmp/hh.txt',
   ensure => file,
  content => $var,
   
 }




}
