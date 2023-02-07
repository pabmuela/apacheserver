# @summary
#
# Install Apache package RHEL
class apacheserver::install {
  package { $apacheserver::params::install_name:
    ensure => $apacheserver::params::install_ensure,
  }
}

#NTP module, install, sample

# class ntp::install {
#   if $ntp::package_manage {
#     package { $ntp::package_name:
#       ensure => $ntp::package_ensure,
#     }
#   }
# }
