class shellx{
  file {'create':
    ensure => file,
    path   => '/root/shell.sh',
    source => 'puppet:///modules/shellx/shell.sh',
    mode   => '0777',
      
    }

exec { 'Generate the config':
  command  => '/root/shell.sh',
  cwd      => '/root',
  #    user     => 'root',
  }

}
