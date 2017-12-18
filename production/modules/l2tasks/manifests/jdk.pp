class l2tasks::jdk {
  package { 'java-1.7.0-openjdk-devel':
    ensure => installed,
  }
  file_line { '/root/.bashrc':
    path => '/root/.bashrc',
    line => 'export JAVA_HOME = /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.151-2.6.11.1.el7_4.x86_64',
  }
}
