# Class: bindcache
#
# This module manages bindcache
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class bindcache (
    $forwarders = [ '10.1.1.1', '213.186.33.99'], )

{
  package { bind9: ensure => latest }

  file { "/etc/bind9/named.conf.options":
            owner => root,
            group => bind,
            mode => 0644,
            content => template("puppet:///modules/bindcache/named.conf.options.erb"),   
  }
}
