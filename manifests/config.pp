# Manage Apache configuration
#   include apacheserver::config
class apacheserver::config {
  file { 'apache_config':
    ensure => $apacheserver::config_ensure,
    path   => $apacheserver::config_path,
    source => "puppet:///modules/apacheserver/${osfamily}.conf",
    mode   => '0644',
    owner  => 'root',
    group  => 'root',
  }
}
