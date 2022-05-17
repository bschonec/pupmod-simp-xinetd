# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include xinetd::install
class xinetd::install {

  package { 'xinetd':
    ensure => $xinetd::package_ensure
  }

}
