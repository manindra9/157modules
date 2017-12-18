
class cups_module {
package{'cups':
ensure => present,
}
service{'cups':
ensure => running,
}
}


