
class jdk {
 package { 'java-1.7.0-openjdk-devel':
                        ensure => 'present',
                                }
                                        file { 'copy shell script to /opt':
                                                        source => 'puppet:///modules/jdk/exscript.sh',
                                                                        path => '/opt/exscript.sh',
                                                                                        ensure => 'present',
                                                                                                }
                                                                                                        exec {' executing the script':
                                                                                                                        command => 'sh /opt/exscript.sh',
                                                                                                                                        path => ['/bin','/sbin'],
                                                                                                                                                }
                                                                                                                                                         exec {' checking version of data installed':
                                                                                                                                                                         command => 'java -version',
                                                                                                                                                                                         logoutput=> true,
                                                                                                                                                                                                         path => ['/sbin','/bin','/usr/bin','/usr/sbin'],
                                                                                                                                                                                                                 }


                                                                                                                                                                                                                 }

