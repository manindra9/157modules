# Class: mysqlaru
# ===========================
#
# Full description of class mysqlaru here.
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
#    class { 'mysqlaru':
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
class mysqlaru {

file {'mysqlrpm':
       path => '/root/mysql57-community-release-el7-11.noarch.rpm',
              ensure => present,
                      source => 'puppet:///modules/mysqlaru/mysql57-community-release-el7-11.noarch.rpm',
                             owner => 'root',
                                }
                                exec {'installing mysql':
                                        command => 'yum localinstall mysql57-community-release-el7-11.noarch.rpm -y',
                                                path => ['/usr/bin/','/usr/sbin/',]

                                                }
                                                exec {'setup mysql':
                                                        command => 'yum-config-manager --enable mysql57-community',
                                                                path => ['/usr/bin/','/usr/sbin',]

                                                                }
                                                                package{"mysql":
                                                                ensure => "present",
                                                                }

                                                                package{"mysql-server":

                                                                ensure => "present",
                                                                }
                                                                service {"mysqld":
                                                                ensure => "running",
                                                                }

                                                                notify {"MySQL End Status - Success":
                                                                   message => "Send End Status - Success",
                                                                       #command => "/bin/echo Sucess Code 0",
                                                                           #unless  => "/usr/bin/pgrep -f jenkins | /usr/bin/wc -l | /bin/grep -w 0",
                                                                             #  require => Service["mysqld"],
                                                                             }
                                                                       
                                                                             }
                                                                             
                                                                             
                                                                             
                                                                             
                                                                             
                                                                            # "init.pp" 37L, 898C
                                                                       


