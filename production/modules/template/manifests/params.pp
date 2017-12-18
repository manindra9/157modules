class template::params {
  case $::osfamily {
    'RedHat'  : { $file_path = '/root/p/1.txt' }
    'Windows' : { $file_path = 'E:/mani/1.txt' }
    default: {fail("Login class does not work on osfamily: ${::osfamily}")}
  }
}
