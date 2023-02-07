# @summary A short summary of the purpose of this class
# Operating systems related variables
class apacheserver::params {
  $install_ensure = 'present'
  case $facts.os.name {
    'RedHat': {
      $install_name = 'httpd'
    }
    'Debian': {
      $install_name = 'apache2'
    }
  }
}
