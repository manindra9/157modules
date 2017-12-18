class samba::install {
  
#  $appenddata = template('samba/smb.conf.erb')
  $fileshare  = 'samba'
  $path = '/root/p'
  $user = 'root'
  $yesno = 'no'
  $sambapack = [ 'samba','samba-client', ]
  
  package {$sambapack: 
     ensure => installed,
  }

  service { 'smb':
    ensure => running,
    enable => true,
    require => [ Package[$sambapack],
                 File_line['/etc/samba/smb.conf'],],
  }
  file_line { '/etc/samba/smb.conf':
     path => '/etc/samba/smb.conf',
     line =>  template('samba/smb.conf.erb'),
    require => Package[$sambapack],
  }

}




