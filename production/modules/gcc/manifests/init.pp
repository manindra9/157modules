# Class: gcc
# ===========================
#
# Full description of class gcc here.
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
#    class { 'gcc':
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
class gcc {
  exec { 'executing group install' :
         command => 'yum groupinstall "Developing Tools" ',
         path => ['/sbin/','/bin/','/usr/sbin/','/usr/bin'],
         returns => [0,1,2,3,4,5],
         }
  exec { 'executing group install' :
         command => 'yum --setopt=group_package_types=mandatory,default,optional groupinstall "Development Tools"',
         path => ['/sbin/','/bin/','/usr/sbin/','/usr/bin'],
         returns => [0,1,2,3,4,5],
             }
  exec { 'checking the version':
          command => 'gcc --version',
          path => ['/sbin/','/bin/','/usr/sbin/','/usr/bin/'],
          returns =>[0,1,2,3,4,5],
          }
#  file { 'copying code file present':
#         path => '/home/test.c',
#         source => 'puppet:///modules/gcc/test.c',
#         ensure => 'present',
#         recurse => 'remote',
#         }
#  exec { 'compiling the test program' :
#         command => 'cc test.c -o test',
#         cwd => '/home',
#         returns => [0,1,2,3,4,5],
#         path => ['/sbin/','/bin/','/usr/sbin/','/usr/bin/'],
#         }
# exec { 'executing the test program':
#         command => 'sh /home/test.c',
#         path => ['/sbin/','/bin/','/usr/bin/','/usr/sbin/'],
#         returns => [0,1,2,3,4,5],
#         logoutput => 'true',
#          }                                                                                                                                                                }
