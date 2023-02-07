# @summary
#
# Install Apache package RHEL
class apacheserver::install {
  package { $apacheserver::install_name:
    ensure => $apacheserver::install_ensure,
  }
}
