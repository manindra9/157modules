class tomcat::install {
  
  $tompack = ['tomcat','tomcat-webapps','tomcat-admin-webapps',]
  
  package {$tompack:
    ensure => installed,
  }

  file {'create':
    ensure => file,
    path   => '/usr/share/tomcat/conf/tomcat-users.xml',
    source => 'puppet:///modules/tomcat/1.xml',
  }
 
  service {'tomcat':
    ensure => running,
    enable => true,
  }

}
