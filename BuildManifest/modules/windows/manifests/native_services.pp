class windows::native_services {
  service { Spooler:
    ensure => 'stopped',
    enable => manual,
  }
}
