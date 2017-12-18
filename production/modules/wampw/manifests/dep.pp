class wampw::dep{
  file { "c:\\vcredist_x86.exe":
    ensure => present,
    source => "puppet:///modules/wampw/vcredist_x86.exe",
    notify => Package["wamp_dep"],
  }
  package { "wamp_dep":
    ensure => installed,
    source => "c:\\vcredist_x86.exe",
    require => File["c:\\vcredist_x86.exe"],
    install_options => ['/VERYSILENT','/SUPPRESSMSGBOXES','/LOG'],  
  }
}
