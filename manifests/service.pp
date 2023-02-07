# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apacheserver::service
class apacheserver::service {
  service { $apacheserver::service_name:
    ensure     => $apacheserver::service_ensure,
    enable     => $apacheserver::service_enable,
    hasrestart => true,
  }
}
