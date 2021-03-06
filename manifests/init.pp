# == Class: licensefile
#
# Full description of class licensefile here.
#
# === Parameters
#
# None.
#
# === Variables
#
# None.
#
#include strident-octo-giggle
#class { 'licensefile':
#}
#
# === Authors
#
# Author Name malc@mail.com
#
# === Copyright
#
# Copyright 2015 Malcolm Badley.
#

class licensefile {
#ensure directories exist
file { [ '/path',
         '/path/to', ]:
          ensure => directory,
  } ->

#ensure license file exists
file { '/path/to/file.lic':
                unless => '/bin/ls /path/to/file.lic.installed',
                source => "puppet:///modules/strident-octo-giggle/file.lic",
                ensure => present,
  }

}
