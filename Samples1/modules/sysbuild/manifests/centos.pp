class sysbuild::centos {
	file { "/tmp/puppetmademe":
		ensure => directory,
	}
}