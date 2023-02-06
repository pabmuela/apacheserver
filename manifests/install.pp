# @summary
#
# Install Apache package RHEL
class apacheserver::install (
  $install_name = $apacheserver::params::install_name,
  $install_ensure = $apacheserver::params::install_ensure,
) inherits apacheserver::params {
  package { "${install_name}":
    ensure => $install_ensure,
  }
}
