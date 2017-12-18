
class template::create {
  include template::params
  $temp = template('template/osinfo.txt.erb')
 # file { 'temp':
  #  path    => $::template::params::file_path,
   # ensure  => file,
    #content => template('template/osinfo.txt.erb'),
  file_line { 'sudo_rule':
      path => $::template::params::file_path,
      line => $temp,
      
  }
}
