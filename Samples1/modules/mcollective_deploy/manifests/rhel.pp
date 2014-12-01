class mcollective_deploy::rhel {
    package {'mcollective':
      ensure => installed,
    }
    file {'/etc/mcollective/clients':
      ensure => "directory",
      require => Package['mcollective'],
      recurse => true,
      source => "puppet:///modules/mcollective_deploy/clients",
    }
    $mcollective_user="mcollective"
    $mcollective_pass="secret"
    $activemq_host="activemq.devops.local"
    file {'/etc/mcollective/server.cfg':
      content => template ('mcollective_deploy/server.cfg.erb'),
      require => Package['mcollective'],
    }
    file {'/etc/mcollective/server_private.pem':
      source => "puppet:///modules/mcollective_deploy/server_private.pem",
      require => Package['mcollective'],
    }  
    file {'/etc/mcollective/server_public.pem':
      source => "puppet:///modules/mcollective_deploy/server_public.pem",
      require => Package['mcollective'],
    }  
}