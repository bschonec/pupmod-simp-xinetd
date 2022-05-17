# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include xinetd::config
class xinetd::config {

### The module should not be managing the files when $package_ensure == 'absent'.
  file { '/etc/xinetd.conf':
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => template('xinetd/xinetd.conf.erb'),
    notify  => [ Service['xinetd'] ],
    require => Package['xinetd']
  }

### The module should not be managing xinetd files when $package_ensure == 'absent'.
  file { '/etc/xinetd.d':
    ensure  => 'directory',
    owner   => 'root',
    group   => 'root',
    mode    => '0640',
    recurse => true,
    purge   => $purge,
    require => Package['xinetd']
  }
}
