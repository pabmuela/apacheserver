# @summary A short summary of the purpose of this defined type.
#
# A description of what this defined type does
#
# @example
#   apacheserver::vhosts { 'namevar': }
define apacheserver::vhosts (
  Integer    $port,
  String[1]  $subdomain,
  String     $admin,
  String[1]  $docroot, 
) {
  file { "${docroot}":
    ensure  => 'directory',
    owner   => $apacheserver::vhosts_owner,
    group   => $apacheserver::vhosts_group,
  }
  file { "${apacheserver::vhost_dir}/${subdomain}.conf":
    ensure  => file,
    owner   => $apacheserver::vhosts_owner,
    group   => $apacheserver::vhosts_group,
    mode    => '0644',
    content => epp('apacheserver/vhosts.conf.epp', {'port' => $port, 'subdomain' => $subdomain, 'admin' => $admin, 'docroot' => $docroot}),
    notify  => Service[$apacheserver::service_name],
  }
