class mcollective_nettest_agent(
  Boolean $manage_gem_dependencies = true,
  String $package_provider = 'puppet_gem',
) {

  mcollective::plugin { 'nettest':
    source =>  'puppet:///modules/mcollective_nettest_agent',
  }

  if ($manage_gem_dependencies) {
    package { 'net-ping':
      ensure   => present,
      provider => $package_provider,
    }
  }

}

