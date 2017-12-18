class l2tasks::resetpasswd {
  user { 'xyz': 
    ensure   => present,
    password => '$1$eKTELUG1$8Y99rXcGYB6fRe7.IAQ040',
  }
}
