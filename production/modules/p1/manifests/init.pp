class p1 {

#  package {'ntp':
 #   ensure => presenet,
 # }
  service { 'ntpd':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
     hasrestart => true,
   # require    => Package['ntp'],
  }
}
