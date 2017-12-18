class lamp::install {
  $lamppack = [ 'httpd','nano','curl','wget','bind-utils','telnet','mod_ssl','openssl','mariadb-server','mariadb','php','php-mysql','php-gd',]


  package {$lamppack:
    ensure => installed,
  }
  
  service {'httpd':
    ensure => running,
  }

  file {'create':
    ensure => file,
    path   => '/var/www/html/index.php',
    source => 'puppet:///modules/lamp/info.php',
  }

  exec { "sed -i -e 's/^[ \t]*//' /etc/httpd/conf/httpd.conf":
    path    => ['/usr/bin', '/usr/sbin',],
  }

  exec { 'sed -i "s|IncludeOptional|#IncludeOptional|" /etc/httpd/conf/httpd.conf':
    path    => ['/usr/bin', '/usr/sbin',],
  }

  exec { 'sed -i "s|#ServerName www.example.com:80|ServerName localhost|" /etc/httpd/conf/httpd.conf':
    path    => ['/usr/bin', '/usr/sbin',],
  }

  exec { 'sed -i "s|DirectoryIndex index.html|DirectoryIndex index.html index.php|" /etc/httpd/conf/httpd.conf':
    path    => ['/usr/bin', '/usr/sbin',],
  }
  exec { 'echo "AddType application/x-httpd-php .php" | tee -a /etc/httpd/conf/httpd.conf':
    path    => ['/usr/bin', '/usr/sbin',],
  }

}
