# Class: adobereader
# ===========================
#
# Full description of class adobereader here.
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
#    class { 'adobereader':
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
#class adobereader {

class adobereader{
        file {'copy msi setup':
                source => "puppet:///modules/adobe_reader/file.exe",
                #path => 'C:\\adobe_reader.msi',
                 # path => 'C:/claculator/log1.pl',
                   path => 'C:/adobe_reader',
                  ensure => present,
               # mode => "0755",
                owner => 'Administrator',
                                                }
        exec{'installing adobe':
               command => '"C:\\Windows\\System32\\cmd.exe"  "msiexec /i C:\\adobe_reader.msi /quiet /norestart /log C:\\adobe_reader_log.log"'
                                                                }
                                        
                                        
                                        
                                                                }}

                                                                
                                                                
                                                                                                                             
                                                                                                                                
                                                                

