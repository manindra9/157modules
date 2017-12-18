
class recursion_aru {


   file {"/etc/ntp.conf":
      ensure  => file,
      content => "ntp/ntp.conf.erb".template, # function call; resolves to a string
   }

     apache.include # function call; modifies catalog

     $binaries = [
     "facter",
     "hiera",
     "mco",
     "puppet",
     "puppetserver",
   ]

    # function call with lambda; runs block of code several times
    #each($binaries) |$binary| {
    $binaries.each |$binary| {
      file {"/usr/bin/$binary":
       ensure => link,
       target => "/opt/puppetlabs/bin/$binary",
           }
         }  
         }
