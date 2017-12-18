class php {
  file { 'abcd':
  path=> '/root/s.txt'
  ensure=> file,
  content=> 'hello',
  }
}
