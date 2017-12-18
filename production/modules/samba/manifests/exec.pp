class samba::exec {
  include samba::install

  exec { 'echo -e "test\ntest" | smbpasswd -a root':
       path    => ['/usr/bin', '/usr/sbin',],
  }
}
