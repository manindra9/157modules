
class createuser {
i
user {'arushi':

  name => 'arushi',
  ensure => 'present',
  password => '$1$1CETMoI1$ESsD3V9tUYwG4tlf3VHPi.',
  managehome => true ,
  home => '/home/arushi',
  #gid => '/newuser',
  #gid => 'daemon'

  }
  }


