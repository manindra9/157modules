# Class: checksumdir
# ===========================
#
# Full description of class checksumdir here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'checksumdir':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
#
class checksumdir {
  file {'/root/manindra/scripts/puppet-agent-1.10.5-1.el7.x86_64.rpm':
    ensure           => directory,
    source           => 'puppet:///modules/checksumdir/puppet-agent-1.10.5-1.el7.x86_64.rpm',
    path             => '/root/manindra/puppet-agent-1.10.5-1.el7.x86_64.rpm',
   # recurse          => true,
    owner            => 'root',
    checksum         => md5,
    checksum_value   => '471a4d2ffe8351e72b023832c11d9d92',
    audit            => [checksum_value]
  }
}
