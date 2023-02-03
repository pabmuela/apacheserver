# @summary
#
# Install Apache package RHEL

class apacheserver::install {
  package { 'httpd':
    ensure => 'present',
  }
}
