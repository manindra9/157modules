# Class: apachearu
# ===========================
#
# Full description of class apachearu here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'apachearu':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
#

class apachearu {


exec {'install_tomcat':
command => 'yum install tomcat',
path => ['/usr/bin/','/usr/sbin/',],
logoutput => 'true',
returns => [0, 5, 2, 1, 14],

}

file {'/usr/share/tomcat/conf/tomcat.conf':
ensure => 'present',
}

file_line { 'add_a_line':
path => '/usr/share/tomcat/conf/tomcat.conf',
line => 'JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512m -XX:MaxPermSize=256m -XX:+UseConcMarkSweepGC"',
}



exec {'install tomcat root page':
command => 'yum install tomcat-webapps tomcat-admin-webapps',
path => ['/usr/bin/'],
logoutput => 'true',
returns => [0, 2, 1, 5, 14],

}

exec {'start_service':
command => 'systemctl start tomcat',
path => ['/usr/bin/'],
returns => [0, 2, 1, 5, 14],


}

exec {'restart_service':
command => 'systemctl restart tomcat',
path => ['/usr/bin/'],
returns => [0, 2, 1, 5, 14],

}

exec {'enable_service':
command => 'systemctl enable tomcat',
path => ['/usr/bin/','/usr/sbin/',],
returns => [0, 2, 1, 5, 14],

}
file_line { 'add_listening_port':
path => '/etc/httpd/conf/httpd.conf',
line => 'Listen 10.132.17.160:8080',
}

}
