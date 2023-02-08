# @summary A short summary of the purpose of this defined type.
#
# A description of what this defined type does
#
# @example
#   apacheserver::vhosts { 'namevar': }
define apacheserver::vhosts (
  Integer $port,
  String  $subdomain,
  String  $admin,
  String  $docroot,
) {
  file { "${docroot}":
    ensure  => 'directory',
    owner   => $apacheserver::vhosts_owner,
    group   => $apacheserver::vhosts_group,
  }

  $vhosts_hash = {
    'port'      => $port,
    'subdomain' => $subdomain,
    'admin'     => $admin,
    'docroot'   => $docroot,
    'fqdn'      => $facts['fqdn'],
  }

  file { "${apacheserver::vhosts_dir}/${subdomain}.conf":
    ensure  => file,
    owner   => $apacheserver::vhosts_owner,
    group   => $apacheserver::vhosts_group,
    mode    => '0644',
    content => epp('apacheserver/vhosts.conf.epp', $vhosts_hash),
    notify  => Service[$apacheserver::service_name],
  }
}
