
class pass_aru {

user {'change_pass':

  ensure => present,
  exec {
    command => 'getent passwd $user',
  password => '$redhat@123',
#  password_max_age => -1,
  password_max_age => 45,


  }
  }


  

