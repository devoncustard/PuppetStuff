class joe {

  case $::osfamily {
    'windows': {
      include windows
    }

    'RedHat': {
      include redhat
    }
  }

  



}
