class sysbuild::windows {
	file { "c:/puppetmademe":
		ensure => "directory",
	}
}