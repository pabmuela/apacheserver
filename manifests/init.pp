# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apacheserver
class apacheserver (
  String $install_name,
  String $install_ensure,
  String $config_ensure,
  String $config_path,
  Enum["stopped", "running"] $service_ensure,
  String $service_name,
  Boolean $service_enable = true,
) {
  contain apacheserver::install
  contain apacheserver::config
  contain apacheserver::service

  Class['::apacheserver::install']
  -> Class['::apacheserver::config']
  ~> Class['::apacheserver::service']
}
