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
  Enum["running", "stopped"] $service_ensure,
  String $service_name,
  Boolean $service_enable = true,
  String $vhost_dir,
  String $vhosts_owner,
  String $vhosts_group,
) {
  contain apacheserver::install
  contain apacheserver::config
  contain apacheserver::service

  Class['::apacheserver::install']
  -> Class['::apacheserver::config']
  ~> Class['::apacheserver::service']
}
