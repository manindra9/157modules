class wampw{
  include wampw::dep
  file { "c:\\wampserver3.1.0_x64.exe":
    ensure => present,
    source => "puppet:///modules/wampw/wampserver3.1.0_x64.exe",
    notify => Package["wamp_install"],
  }
  package { "wamp_install":
    ensure => installed,
    source => "c:\\wampserver3.1.0_x64.exe",
    require => File["c:\\wampserver3.1.0_x64.exe"],
    install_options => ['/VERYSILENT','/SUPPRESSMSGBOXES','/LOG'],  
  }
}
