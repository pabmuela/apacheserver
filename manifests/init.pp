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
) {
  contain apacheserver::install
  contain apacheserver::config

  Class['::apacheserver::install']
  -> Class['::apacheserver::config']
}
