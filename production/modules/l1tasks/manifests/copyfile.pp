class l1tasks::copyfile {
  file {'/tmp/copy.txt':
    ensure  => present,
    source  => 'puppet:///modules/l1tasks/copy.txt',
  }
}
