# @summary
#
# Install Apache package RHEL
class apacheserver::install {
  package { $apacheserver::install_name:
    ensure => $apacheserver::install_ensure,
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
