# @summary
#
# Install Apache package

class apacheserver::install {
  package { 'httpd':
    ensure => 'present',
  }
}
