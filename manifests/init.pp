# == Class: strident-octo-giggle
#
# Full description of class strident-octo-giggle here.
#
# === Parameters
#
# None.
#
# === Variables
#
# None.
#
# === Authors
#
# Author Name malc@mail.com
#
# === Copyright
#
# Copyright 2015 Malcolm Badley.
#
file { '/path/to/file.lic':
                unless => '/bin/ls /path/to/file.lic.installed',
                source => "puppet:///modules/strident-octo-giggle/file.lic",
                ensure => present,
}
