class go-agent::params {
  case $::osfamily {
    'Debian': {
      $package_details = {
        'provider' => dpkg,
        'package_url' => "http://dl.bintray.com/gocd/gocd-deb/go-agent-14.4.0-1356.deb",
        'java_class' => Class['java::debian']
      }
    }
    'Suse': {
      $package_details = {
        'provider' => rpm,
        'package_url' => "http://dl.bintray.com/gocd/gocd-rpm/go-agent-14.4.0-1356.noarch.rpm",
        'java_class' => Class['java::suse']
      }
    }
  }
}