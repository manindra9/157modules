class pass_aru1
{
$newuserid = manindra
  user { $newuserid :
  ensure  => present,
  password => '$redhat@123',
  home    => "/home/${newuserid}",
  managehome => true,
  #gid => "mygid",
        }

        exec { 'set password':
          command => "/bin/echo \"${newuserid}:${newuserid}\" | /usr/sbin/chpasswd",
            require => User[$newuserid],
#          onlyif => 

            }
            }


