class l1tasks::service {
  service {'firewalld':
    ensure => stopped,
  }
}
